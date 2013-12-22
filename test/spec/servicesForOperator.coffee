app = require(process.cwd() + "/src/app")
should = require('chai').should
should()

describe 'AiR Service API for operator',->

  it 'should have "/" for index.html',->
    expectedMethod = "/"

    # find it
    routines = app.routes.get.filter((item)->
      item.path == expectedMethod
    )

    routines.length.should.equal(1)

  it 'should have "/search"',->
    expectedMethod = '/search'
    # find it
    qualifiedRoutines = app.routes.get.filter((item)->
      item.path == expectedMethod
    )

    qualifiedRoutines.length.should.equal(1)

  it 'should have "/testCard/:testCardId"',->
    expectedMethod = '/testCard/:testCardId'

    # find it
    qualifiedRoutines = app.routes.get.filter((item)->
      item.path == expectedMethod
    )

    qualifiedRoutines.length.should.equal(1)

  it 'should have /result/:orderNumber/:sessionKey',->
    expectedMethod = '/result/:orderNumber/:sessionKey'

    # find it
    qualifiedRoutines = app.routes.get.filter((item)->
      item.path == expectedMethod
    )

    qualifiedRoutines.length.should.equal(1)