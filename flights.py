import os
from sqlalchemy import Column, Integer, String
from sqlalchemy.ext.declarative import declarative_base

Base = declarative_base()

class Flight(Base):
    __tablename__ = 'flights'

    id = Column(Integer, primary_key=True)
    airport_name = Column(String)
    country_name = Column(String)
    continent = Column(String)
    departure_date = Column(String)
    arrival_airport = Column(String)
    pilot_name = Column(String)
    flight_status = Column(String)

# Needs to be run from the folder
flight = session.query(Flight).filter(Flight.airport_name == 'Duxford Aerodrome').all()
print(flight)






