import os
from sqlalchemy import create_engine, Column, Integer, String
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker

db_url = "sqlite:///flights.db"
engine = create_engine(db_url)
conn = engine.connect()

# Create a session
Session = sessionmaker(bind=engine)
session = Session() 