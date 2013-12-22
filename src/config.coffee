# configuration for express server
express = require 'express'

config = (app)->
	app.set('port', process.env.PORT || 9898)

	app.use(express.logger())
	app.use(express.compress())
	app.use(express.methodOverride())
	app.use(express.bodyParser())

	# error handling
	app.use((err, req, res, next)->
		console.error(error.stack)
		res.send(500, 'something broke!')
	)

module.exports = config
