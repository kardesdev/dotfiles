from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker

engine = create_engine("postgresql://usuario:password@127.0.0.1:5432/bd_transacciones")
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)
