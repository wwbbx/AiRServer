app = require(process.cwd() + '/src/app')

describe 'AiR Service for developer',->
  it 'should have /develop',->
    expectedMethod = '/develop'

    # find it
    routines = app.routes.get.filter((item)->
      item.path == expectedMethod
    )

    routines.length.should.equal(1)

  it 'should have /develop/newTestCardId',->
    expectedMethod = '/develop/newTestCardId'

    # find it
    routines = app.routes.get.filter((item)->
      item.path == expectedMethod
    )

    routines.length.should.equal(1)
