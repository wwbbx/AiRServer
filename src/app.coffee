# use express to setup initial server
express = require 'express'
config = require './config'
route = require './route'

app = express()

config(app)
route(app)

module.exports = app
