Meteor.startup ->
  if Dogs.find().fetch().length is 0
    console.log "Adding preset dogs"
    presetDogs = [
      {
        name: "Poppy"
        breed: "Border Collie"
        sex: "f"
        age: 4
        beenDone: true
        faveThing: "Ball"
      }
      {
        name: "Zac"
        breed: "Nova Scotian Duck-Tolling Retriever"
        age: 4
        sex: "m"
        beenDone: true
        faveThing: "Ball"
      }
      {
        name: "Jess"
        breed: "Mixed-breed"
        age: 3
        sex: "f"
        beenDone: true
        faveThing: "Food"
      }
      {
        name: "Ozzie"
        breed: "Labrador Retriever"
        age: 5
        sex: "m"
        beenDone: true
        faveThing: "Sleeping"
      }
      {
        name: "Snowy"
        breed: "White Wire Fox Terrier"
        age: 7
        sex: "m"
        beenDone: false
        faveThing: "Running"
      }
    ]
    _.each presetDogs, (presetDog) ->
      Dogs.insert presetDog
      return
  return