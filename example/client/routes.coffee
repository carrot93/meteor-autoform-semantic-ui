Router.configure(
  layoutTemplate: "layout"
)

Router.map ->
  @route "index",
    path: "/"
  @route "insert"
  @route "update",
    path: "update/:_id"
    data: ->
      dog: Dogs.findOne @params._id
  @route "method",
    path: "method/:_id"
    data: ->
      dog: Dogs.findOne @params._id