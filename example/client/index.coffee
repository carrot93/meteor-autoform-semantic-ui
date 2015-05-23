Template.index.helpers
  dogs: ->
    Dogs.find({}, sort: name: 1)

Template.index.events
  "click .add-dog": ->
    Session.set "updateDoc", null
    Session.set "ptype",true
    $(".modal.insert").modal("show")
  "click .edit-dog": ->
    Session.set "updateDoc", @
    Session.set "ptype",false
    $(".modal.update").modal("show")
  "click .delete-dog": ->
    Dogs.remove @_id
