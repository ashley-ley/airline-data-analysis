from flask import Flask, jsonify
import numpy as np
import sqlalchemy
from sqlalchemy.ext.automap import automap_base
from sqlalchemy.orm import Session
from sqlalchemy import create_engine, func, distinct 
import datetime as dt







import os
import psycopg2
from flask import Flask, jsonify, g, request
from sqlalchemy import create_engine, Column, Integer, String
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker, scoped_session


#Base = declarative_base()
# Save references to each table
#measurement = Base.classes.measurement
#station = Base.classes.station
app = Flask(__name__)
conn = psycopg2.connect(
        host="localhost", 
        port="5432",
        dbname="Airline_db",
        user='postgres',
        password='postgres')

#################################################
# Flask Routes
#################################################


@app.route('/airline_db', methods=['GET'])
def get_flight_status():
    # Get the table name from the query parameter
    table_name = request.args.get('italy_flights')
    if table_name is None:
        return jsonify({'error': 'Missing table_name parameter'})
    cursor = conn.cursor()
    try:
        # Execute a query to get flight_status from the specified table
        cursor.execute(f'SELECT flight_status FROM {table_name}')
        flight_statuses = [row[0] for row in cursor.fetchall()]
        return jsonify({'flight_status': flight_statuses})
    except Exception as e:
        return jsonify({'error': 'Database error', 'message': str(e)})
    finally:
        cursor.close()
if __name__ == '__main__':
    app.run(debug=True)

    
@app.route('/germany', methods=['GET'])
def get_flight_status():
    # Get the table name from the query parameter
    table_name = request.args.get('germany_flights')
    if table_name is None:
        return jsonify({'error': 'Missing table_name parameter'})
    cursor = conn.cursor()
    try:
        # Execute a query to get flight_status from the specified table
        cursor.execute(f'SELECT flight_status FROM {table_name}')
        flight_statuses = [row[0] for row in cursor.fetchall()]
        return jsonify({'flight_status': flight_statuses})
    except Exception as e:
        return jsonify({'error': 'Database error', 'message': str(e)})
    finally:
        cursor.close()
if __name__ == '__main__':
    app.run(debug=True)

    
@app.route('/london', methods=['GET'])
def get_flight_status():
    # Get the table name from the query parameter
    table_name = request.args.get('london_flight')
    if table_name is None:
        return jsonify({'error': 'Missing table_name parameter'})
    cursor = conn.cursor()
    try:
        # Execute a query to get flight_status from the specified table
        cursor.execute(f'SELECT flight_status FROM {table_name}')
        flight_statuses = [row[0] for row in cursor.fetchall()]
        return jsonify({'flight_status': flight_statuses})
    except Exception as e:
        return jsonify({'error': 'Database error', 'message': str(e)})
    finally:
        cursor.close()
if __name__ == '__main__':
    app.run(debug=True)
 

@app.route('/mexico', methods=['GET'])
def get_flight_status():
    # Get the table name from the query parameter
    table_name = request.args.get('mexico_flights')
    if table_name is None:
        return jsonify({'error': 'Missing table_name parameter'})
    cursor = conn.cursor()
    try:
        # Execute a query to get flight_status from the specified table
        cursor.execute(f'SELECT flight_status FROM {table_name}')
        flight_statuses = [row[0] for row in cursor.fetchall()]
        return jsonify({'flight_status': flight_statuses})
    except Exception as e:
        return jsonify({'error': 'Database error', 'message': str(e)})
    finally:
        cursor.close()
if __name__ == '__main__':
    app.run(debug=True)
  

@app.route('/uk', methods=['GET'])
def get_flight_status():
    # Get the table name from the query parameter
    table_name = request.args.get('united_kingdom_flights')
    if table_name is None:
        return jsonify({'error': 'Missing table_name parameter'})
    cursor = conn.cursor()
    try:
        # Execute a query to get flight_status from the specified table
        cursor.execute(f'SELECT flight_status FROM {table_name}')
        flight_statuses = [row[0] for row in cursor.fetchall()]
        return jsonify({'flight_status': flight_statuses})
    except Exception as e:
        return jsonify({'error': 'Database error', 'message': str(e)})
    finally:
        cursor.close()
if __name__ == '__main__':
    app.run(debug=True,port=5001)