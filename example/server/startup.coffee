Meteor.startup ->
  if Dogs.find().fetch().length is 0
    console.log "Adding preset dogs"
    presetDogs = [
      {
        name: "Poppy"
        breed: "Border Collie"
        age: 4
        beenDone: true
      }
      {
        name: "Zac"
        breed: "Nova Scotian Duck-Tolling Retriever"
        age: 4
        beenDone: true
      }
      {
        name: "Jess"
        breed: "Mixed-breed"
        age: 3
        beenDone: true
      }
      {
        name: "Ozzie"
        breed: "Labrador Retriever"
        age: 5
        beenDone: true
      }
      {
        name: "Snowy"
        breed: "White Wire Fox Terrier"
        age: 7
        beenDone: false
      }
    ]
    _.each presetDogs, (presetDog) ->
      Dogs.insert presetDog
      return
  return