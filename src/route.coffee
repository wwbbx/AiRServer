# route for express server
express = require 'express'
search = require './services'

route = (app)->
	# static public file exploring
	#app.use(express.static(__dirname + '/public'))

	#app.use('/', (req, res)->
	#	res.send('Root of this server.')
	#)

	# --------- services for operator ------------
	app.get('/', (req, res)->
	  console.log req
	)

	app.get('/search', (req, res)->
		search(req, (result)->
			res.send(result)
		)
	)

	app.get('/testCard/:testCardId', (req, res)->
    console.log req
	)

	app.get('/result/:orderNumber/:sessionKey', (req, res)->
	  console.log req
	)

	# ---------- services for developer ------------
	app.get('/develop', (req, res)->
	  console.log req
	)

	app.get("/develop/newTestCardId", (req, res)->
	  console.log req
	)

	# ---------- services for admin -------------
	app.get('/admin', (req, res)->
	  console.log req
	)

	app.get('/admin/release', (req, res)->
	  console.log req
	)

	app.get('/admin/approve', (req, res)->
	  console.log req
	)

module.exports = route
