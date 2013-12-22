# visit server root should return nothing.
request = require 'supertest'
app = require(process.cwd() + '/src/app')
nock = require 'nock'
should = require('chai').should
should()

describe 'AiR RESTFul APIs', ->
	it 'should return fake cso if searching "order"',(done)->
		# mock up backend services call
		scope = nock("http://localhost:#{app.get('port')}")
		.get('/search?order=1-12345-1')
		.reply(200, {order:"1-12345-1"})

		request('http://localhost:9898')
		.get('/search?order=1-12345-1')
		.end((err, res)->
			res.status.should.equal(200)
			res.body.order.should.equal('1-12345-1')
			scope.done()
			done()
		)
