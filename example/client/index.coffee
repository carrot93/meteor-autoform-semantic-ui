Template.index.helpers
  dogs: ->
    Dogs.find({}, sort: name: 1)