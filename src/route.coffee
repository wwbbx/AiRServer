# route for express server
express = require 'express'
search = require './services'

route = (app)->
	# static public file exploring
	app.use(express.static(__dirname + '/public'))

	#app.use('/', (req, res)->
	#	res.send('Root of this server.')
	#)

	# support /search?model=3458A
	app.get('/search', (req, res)->
		search(req, (result)->
			res.send(result)
		)
	)

module.exports = route
