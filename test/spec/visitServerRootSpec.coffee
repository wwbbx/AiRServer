# visit server root should return nothing.
request = require 'supertest'
app = require(process.cwd() + '/src/app')
nock = require 'nock'
should = require('chai').should
should()

describe 'AiR RESTFul APIs', ->
	it 'should return fake cso if searching "order"',(done)->

		expected = {order:'1-1234567890-1'}
		queryString = '/search?roder=1-1234567890-1'

		# mock up backend services call
		scope = nock("http://localhost:#{app.get('port')}")
		.get(queryString)
		.reply(200, expected)

		request('http://localhost:9898')
		.get(queryString)
		.end((err, res)->
			res.status.should.equal(200)
			actual = res.body
			actual.order.should.equal(expected.order)
			scope.done()
			done()
		)
