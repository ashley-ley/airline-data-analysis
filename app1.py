from flask import Flask, jsonify
import json
import numpy as np

import sqlalchemy
from sqlalchemy.ext.automap import automap_base
from sqlalchemy.orm import Session
from sqlalchemy import create_engine, func


app = Flask (__name__)

@app.route ('/data', methods = ['GET'])

def data():
   try:
      with open ('data.json','r') as json_file:
         data = json.load(json_file)

      return jsonify(data)
   except FileNotFoundError:
       return jsonify({'this sucks'})

if __name__ == '__main__':
    app.run(debug=True)