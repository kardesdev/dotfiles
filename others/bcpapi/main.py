from db.models import Base
from db.engine import engine
from rest.server import app

Base.metadata.create_all(engine)

start = app
