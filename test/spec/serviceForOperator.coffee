app = require(process.cwd() + "/src/app")
request = require('supertest')

describe 'AiR Service for operator',->

  it 'pure testing',(done)->
    airService = request(app)

    airService.get('/search?model=3458A')
    .end((err, res)->
      res.body.model.should.equal('3458A')
      done()
    )