using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using HelloBlazor.Data;
using HelloBlazor.Model;


[Route("orders")]
[ApiController]
public class OrdersController : Controller
{
  private readonly PizzaStoreContext _db;

  public OrdersController(PizzaStoreContext db) => _db = db;

  [HttpGet]
  public async Task<ActionResult<List<OrderWithStatus>>> GetOrders()
  {
		var orders = await _db.Orders
			.Include(o => o.Pizzas).ThenInclude(p => p.Special)
			.Include(o => o.Pizzas).ThenInclude(p => p.Toppings).ThenInclude(t => t.Topping)
			.OrderByDescending(o => o.CreatedTime)
			.ToListAsync();
		return orders.Select(o => OrderWithStatus.FromOrder(o)).ToList();
  }

	[HttpPost]
	public async Task<ActionResult<int>> PlaceOrder(Order order)
	{
		order.CreatedTime = DateTime.Now;

		foreach (var pizza in order.Pizzas)
		{
			pizza.SpecialId = pizza.Special!.Id;
			pizza.Special = null;
		}

		_db.Orders.Attach(order);
		await _db.SaveChangesAsync();
		return order.OrderId;
	}

	[HttpGet("{orderId}")]
	public async Task<ActionResult<OrderWithStatus>> GetOrderWithStatus(int orderId)
	{
		var order = await _db.Orders
			.Where(o => o.OrderId == orderId)
			.Include(o => o.Pizzas).ThenInclude(p => p.Special)
			.Include(o => o.Pizzas).ThenInclude(p => p.Toppings).ThenInclude(t => t.Topping)
			.SingleOrDefaultAsync();

		if (order == null) return NotFound();
		return OrderWithStatus.FromOrder(order);
	}
}
