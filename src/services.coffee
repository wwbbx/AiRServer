# this is the service index.
searchModel = require './searchModel'
searchResult = require './searchResult'

search = (req, callback)->
	@addressLink = "http://#{req.headers.host}"
	console.log @addressLink

	if(req.param('model'))
		searchModel(req.param('model'), (result)->
			callback(result)
		)

	if(req.param('order'))
		searchResult(req.param('order'), (result)->
			callback(result)
		)

	if(req.param('orderNumber'))
		searchResult(req.param('order'), (result)->
			callback(result)
		)

module.exports = search

