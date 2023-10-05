from flask import Flask, jsonify
import json
import numpy as np
import sqlalchemy
from sqlalchemy.ext.automap import automap_base
from sqlalchemy.orm import Session
from sqlalchemy import create_engine, func


#################################################
# Database Setup
#################################################
engine = create_engine('sqlite:///flights1.db')

# reflect an existing database into a new model
Base = automap_base()

# reflect the tables
Base.prepare(autoload_with=engine)

# Save reference to the table
table = Base.classes.flights

#################################################
# Flask Setup
#################################################
app = Flask (__name__)

#################################################
# Flask Routes
#################################################

@app.route ('/data', methods = ['GET'])
def data():
   try:
      with open ('data.json','r') as json_file:
         data = json.load(json_file)

      return jsonify(data)
   except FileNotFoundError:
       return jsonify({'this sucks'})

@app.route('/data/argentina', methods = ['GET'])
def argentina():
    # Create our session (link) from Python to the DB
    session = Session(engine)

    """Return a list of all data for Argentina"""
    argentina = session.query(table.country_name, table.airport_name, table.arrival_airport, table.flight_status, table.argentina_latitude, table.argentina_longitude).filter(table.country_name == "Argentina").all()
    
    # Convert list of tuples into normal list
    all_names = list(np.ravel(argentina))

    return jsonify(all_names)

# @app.route('/data/germany', methods = ['GET'])
# def germany():
#     # Create our session (link) from Python to the DB
#     session = Session(engine)

#     """Return a list of all data for Germany"""
#     germany= session.query(flights.country_name, flights.airport_name, flights.arrival_airport, flights.flight_status, flights.germany_latitude, flights.germany_longitude).filter(flights.country_name == "Germany").all()
    
#     # Convert list of tuples into normal list
#     all_names = list(np.ravel(germany))

#     return jsonify(all_names)

# @app.route('/data/italy', methods = ['GET'])
# def italy():
#     # Create our session (link) from Python to the DB
#     session = Session(engine)

#     """Return a list of all passenger names"""
#     italy = session.query(flights.country_name, flights.airport_name, flights.arrival_airport, flights.flight_status, flights.italy_latitude, flights.italy_longitude).filter(flights.country_name == "Italy").all()
    
#     #session.query = SELECT COUNTRY_NAME, FLIGHT_STATUS FROM AJDFHA
#     #.filter = WHERE
#     #flights.[...]=FROM

#     session.close()

#     # Convert list of tuples into normal list
#     all_names = list(np.ravel(italy))

#     return jsonify(all_names)

# @app.route('/data/mexico', methods = ['GET'])
# def mexico():
#     # Create our session (link) from Python to the DB
#     session = Session(engine)

#     """Return a list of all data for Mexico"""
#     mexico = session.query(flights.country_name, flights.airport_name, flights.arrival_airport, flights.flight_status, flights.mexico_latitude, flights.mexico_longitude).filter(flights.country_name == "Mexico").all()
    
#     # Convert list of tuples into normal list
#     all_names = list(np.ravel(mexico))

#     return jsonify(all_names)

# @app.route('/data/uk', methods = ['GET'])
# def uk():
#     # Create our session (link) from Python to the DB
#     session = Session(engine)

#     """Return a list of all data for United Kingdom"""
#     uk = session.query(flights.country_name, flights.airport_name, flights.arrival_airport, flights.flight_status, flights.mexico_latitude, flights.mexico_longitude).filter(flights.country_name == "United Kingdom").all()
    
#     # Convert list of tuples into normal list
#     all_names = list(np.ravel(uk))

#     return jsonify(all_names)

if __name__ == '__main__':
   app.run(debug=True)