app = require(process.cwd() + "/src/app")

describe 'AiR Services API for Admin',->

  it 'should have /admin page',->
    expectedMethod = '/admin'

    # find it
    routines = app.routes.get.filter((item)->
      item.path == expectedMethod
    )

    routines.length.should.equal(1)

  it 'should have "/admin/release"',->
    expectedMethod = '/admin/release'

    # find it
    routines = app.routes.get.filter((item)->
      item.path == expectedMethod
    )

    routines.length.should.equal(1)

  it 'should have "/admin/approve"',->
    expectedMethod = '/admin/approve'

    # find it
    routines = app.routes.get.filter((item)->
      item.path == expectedMethod
    )

    routines.length.should.equal(1)
