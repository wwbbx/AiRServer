# searching model number by given parameter
searchModel = (modelNumber, callback)->
	# search test cards by model number
	result = {model: modelNumber}

	callback(result)

module.exports = searchModel
