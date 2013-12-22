request = require 'supertest'
chai = require 'chai'
app = require process.cwd() + '\\src\\app'
services = require process.cwd() + '\\src\\services'
nock = require 'nock'
chai.should()

describe 'testing function', ->
	#it 'should return 200 status',(done)->
	#	airService = request('http://localhost:9898')
	#	airService.get('/search?order=1-12345-1')
	#	.end((err, res)->
	#		res.body.order.should.equal('1-12345-1')
	#		res.status.should.equal(200)
	#		done()
	#	)

	#it 'should use supertest to simulating hosting server', (done)->
	#	localAirServer = request(app)
#
	#	# mock up services.
	#	servicesMock = nock(services.addressLink)
	#	.get('/search?order=1-12345-1')
	#	.reply(200, {order:'1-12345-1'})
#
	#	localAirServer.get('/search?order=1-12345-1')
	#	.end((err, res)->
	#		res.body.order.should.equal('1-12345-1')
	#		res.status.should.equal(200)
	#		servicesMock.done()
	#		done()
	#	)
