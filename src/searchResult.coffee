# search result by ServiceOrderNumber
searchResult = (orderNumber, callback)->
	# search result
	result = {order:orderNumber}
	callback(result)

module.exports = searchResult
