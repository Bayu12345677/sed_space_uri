#!/bin/env xonsh

from flask import Flask, request, abort, jsonify
from flask_restful import Api, Resource

"""
    example flask restfull by polygon
"""

app = Flask(__name__)
api = Api(app)

class null(Resource):
      def get(self):
          return jsonify({"info":"gunakan rute /api/<text_anda>"})

class home(Resource):
      def get(self, og):
          return jsonify({"msg": og})

api.add_resource(home, '/api/<og>')

app.run(debug=True)
