
var Aggregate_possibleTypes = ['Aggregate']
module.exports.isAggregate = function(obj) {
  if (!obj || !obj.__typename) throw new Error('__typename is missing in "isAggregate"')
  return Aggregate_possibleTypes.includes(obj.__typename)
}



var Asset_possibleTypes = ['Asset']
module.exports.isAsset = function(obj) {
  if (!obj || !obj.__typename) throw new Error('__typename is missing in "isAsset"')
  return Asset_possibleTypes.includes(obj.__typename)
}



var AssetConnection_possibleTypes = ['AssetConnection']
module.exports.isAssetConnection = function(obj) {
  if (!obj || !obj.__typename) throw new Error('__typename is missing in "isAssetConnection"')
  return AssetConnection_possibleTypes.includes(obj.__typename)
}



var AssetEdge_possibleTypes = ['AssetEdge']
module.exports.isAssetEdge = function(obj) {
  if (!obj || !obj.__typename) throw new Error('__typename is missing in "isAssetEdge"')
  return AssetEdge_possibleTypes.includes(obj.__typename)
}



var BatchPayload_possibleTypes = ['BatchPayload']
module.exports.isBatchPayload = function(obj) {
  if (!obj || !obj.__typename) throw new Error('__typename is missing in "isBatchPayload"')
  return BatchPayload_possibleTypes.includes(obj.__typename)
}



var Color_possibleTypes = ['Color']
module.exports.isColor = function(obj) {
  if (!obj || !obj.__typename) throw new Error('__typename is missing in "isColor"')
  return Color_possibleTypes.includes(obj.__typename)
}



var DocumentVersion_possibleTypes = ['DocumentVersion']
module.exports.isDocumentVersion = function(obj) {
  if (!obj || !obj.__typename) throw new Error('__typename is missing in "isDocumentVersion"')
  return DocumentVersion_possibleTypes.includes(obj.__typename)
}



var Location_possibleTypes = ['Location']
module.exports.isLocation = function(obj) {
  if (!obj || !obj.__typename) throw new Error('__typename is missing in "isLocation"')
  return Location_possibleTypes.includes(obj.__typename)
}



var Mutation_possibleTypes = ['Mutation']
module.exports.isMutation = function(obj) {
  if (!obj || !obj.__typename) throw new Error('__typename is missing in "isMutation"')
  return Mutation_possibleTypes.includes(obj.__typename)
}



var Node_possibleTypes = ['Asset','Product','Review','User','Vote']
module.exports.isNode = function(obj) {
  if (!obj || !obj.__typename) throw new Error('__typename is missing in "isNode"')
  return Node_possibleTypes.includes(obj.__typename)
}



var PageInfo_possibleTypes = ['PageInfo']
module.exports.isPageInfo = function(obj) {
  if (!obj || !obj.__typename) throw new Error('__typename is missing in "isPageInfo"')
  return PageInfo_possibleTypes.includes(obj.__typename)
}



var Product_possibleTypes = ['Product']
module.exports.isProduct = function(obj) {
  if (!obj || !obj.__typename) throw new Error('__typename is missing in "isProduct"')
  return Product_possibleTypes.includes(obj.__typename)
}



var ProductConnection_possibleTypes = ['ProductConnection']
module.exports.isProductConnection = function(obj) {
  if (!obj || !obj.__typename) throw new Error('__typename is missing in "isProductConnection"')
  return ProductConnection_possibleTypes.includes(obj.__typename)
}



var ProductEdge_possibleTypes = ['ProductEdge']
module.exports.isProductEdge = function(obj) {
  if (!obj || !obj.__typename) throw new Error('__typename is missing in "isProductEdge"')
  return ProductEdge_possibleTypes.includes(obj.__typename)
}



var Query_possibleTypes = ['Query']
module.exports.isQuery = function(obj) {
  if (!obj || !obj.__typename) throw new Error('__typename is missing in "isQuery"')
  return Query_possibleTypes.includes(obj.__typename)
}



var RGBA_possibleTypes = ['RGBA']
module.exports.isRGBA = function(obj) {
  if (!obj || !obj.__typename) throw new Error('__typename is missing in "isRGBA"')
  return RGBA_possibleTypes.includes(obj.__typename)
}



var Review_possibleTypes = ['Review']
module.exports.isReview = function(obj) {
  if (!obj || !obj.__typename) throw new Error('__typename is missing in "isReview"')
  return Review_possibleTypes.includes(obj.__typename)
}



var ReviewConnection_possibleTypes = ['ReviewConnection']
module.exports.isReviewConnection = function(obj) {
  if (!obj || !obj.__typename) throw new Error('__typename is missing in "isReviewConnection"')
  return ReviewConnection_possibleTypes.includes(obj.__typename)
}



var ReviewEdge_possibleTypes = ['ReviewEdge']
module.exports.isReviewEdge = function(obj) {
  if (!obj || !obj.__typename) throw new Error('__typename is missing in "isReviewEdge"')
  return ReviewEdge_possibleTypes.includes(obj.__typename)
}



var RichText_possibleTypes = ['RichText']
module.exports.isRichText = function(obj) {
  if (!obj || !obj.__typename) throw new Error('__typename is missing in "isRichText"')
  return RichText_possibleTypes.includes(obj.__typename)
}



var User_possibleTypes = ['User']
module.exports.isUser = function(obj) {
  if (!obj || !obj.__typename) throw new Error('__typename is missing in "isUser"')
  return User_possibleTypes.includes(obj.__typename)
}



var UserConnection_possibleTypes = ['UserConnection']
module.exports.isUserConnection = function(obj) {
  if (!obj || !obj.__typename) throw new Error('__typename is missing in "isUserConnection"')
  return UserConnection_possibleTypes.includes(obj.__typename)
}



var UserEdge_possibleTypes = ['UserEdge']
module.exports.isUserEdge = function(obj) {
  if (!obj || !obj.__typename) throw new Error('__typename is missing in "isUserEdge"')
  return UserEdge_possibleTypes.includes(obj.__typename)
}



var Version_possibleTypes = ['Version']
module.exports.isVersion = function(obj) {
  if (!obj || !obj.__typename) throw new Error('__typename is missing in "isVersion"')
  return Version_possibleTypes.includes(obj.__typename)
}



var Vote_possibleTypes = ['Vote']
module.exports.isVote = function(obj) {
  if (!obj || !obj.__typename) throw new Error('__typename is missing in "isVote"')
  return Vote_possibleTypes.includes(obj.__typename)
}



var VoteConnection_possibleTypes = ['VoteConnection']
module.exports.isVoteConnection = function(obj) {
  if (!obj || !obj.__typename) throw new Error('__typename is missing in "isVoteConnection"')
  return VoteConnection_possibleTypes.includes(obj.__typename)
}



var VoteEdge_possibleTypes = ['VoteEdge']
module.exports.isVoteEdge = function(obj) {
  if (!obj || !obj.__typename) throw new Error('__typename is missing in "isVoteEdge"')
  return VoteEdge_possibleTypes.includes(obj.__typename)
}
