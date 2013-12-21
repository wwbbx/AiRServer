# visit server root should return nothing.
request = require 'supertest'
app = process.cwd() + '/src/app.coffee'

scope = require 'nock'

should = require('chai').should
should()

describe 'AiR RESTFul APIs', ->
	it 'should return fake cso if searching "order"',(done)->
		# mock up backend services call
		scope = scope('C:\\SOURCE\\AiRServer\\src\\app.js')
		.get('/search?order=1-12345-1')
		.reply({order:"1-12345-1"})

		request(app)
		.get('/search?order=1-12345-1')
		.end((err, res)->
			res.should.have.status(500)
			scope.done()
			done()
		)
