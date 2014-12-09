@Dogs = new Mongo.Collection "dogs"

breeds = [
  "Mixed-breed"
  "Border Collie"
  "Border Terrier"
  "Boxer"
  "Cavalier King Charles Spaniel"
  "English Cocker Spaniel"
  "English Springer Spaniel"
  "German Shepherd"
  "Golden Retriever"
  "Labrador Retriever"
  "Nova Scotian Duck-Tolling Retriever"
  "Portuguese Water Dog"
  "Staffordshire Bull Terrier"
  "West Highland White Terrier"
  "White Wire Fox Terrier"
]

dogSchema = new SimpleSchema(
  name:
    type: String
  breed:
    type: String
    allowedValues: breeds
    autoform:
      options: _.map breeds, (breed) ->
        label: breed, value: breed
  age:
    type: Number
    min: 0
    max: 25
  beenDone:
    type: Boolean
    label: "Neutered/spayed"
)

@Dogs.attachSchema dogSchema