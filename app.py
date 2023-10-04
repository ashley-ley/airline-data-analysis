import os
from flask import Flask, jsonify
from flask_sqlalchemy import SQLAlchemy
from sqlalchemy import create_engine, Column, Integer, String
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker

app = Flask(__name__)

# Configure the SQLite Database
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///flights.db'
db = SQLAlchemy(app)

# Define data model as a class
class Flight(db.Model):
    __tablename__ = 'flights'

    id = db.Column(db.Integer, primary_key=True)
    airport_name = db.Column(db.String)
    country_name = db.Column(db.String)
    continent = db.Column(db.String)
    departure_date = db.Column(db.String)
    arrival_airport = db.Column(db.String)
    pilot_name = db.Column(db.String)
    flight_status = db.Column(db.String)

#################################################
# Flask Routes
#################################################

# @app.route('/')
# def hello_world():
#     return 'Hello, World!'

# if __name__ == '__main__':
#     app.run()

# Define a route to get all flights
@app.route('/flights/public')
def get_all_flights():
    flights = Flight.query.all()
    flight_list = []

    for flight in flights:
        flight_data = {
            'id': flights.id,
            'airport_name': flights.airport_name,
            'country_name': flights.country_name,
            'continent': flights.continent,
            'departure_date': flights.departure_date,
            'arrival_airport': flights.arrival_airport,
            'pilot_name': flights.pilot_name,
            'flight_status': flights.flight_status
        }
        flight_list.append(flight_data)

    return jsonify(flight_list), 200

if __name__ == '__main__':
    app.run(debug=True, port='5001')