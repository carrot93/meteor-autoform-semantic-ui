SimpleSchema.debug = true

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

things = [
  "Ball"
  "Barking"
  "Cats"
  "Food"
  "Fireworks"
  "Frisbee"
  "Hoovers"
  "Kids"
  "Moorhens"
  "Running"
  "Sleeping"
  "Swimming"
  "Vets"
]

dogSchema = new SimpleSchema(
  name:
    type: String
  sex:
    type: String
    allowedValues: ["m", "f"]
    autoform:
      options: [
        {
          label: "Male"
          value: "m"
        }
        {
          label: "Female"
          value: "f"
        }
      ]
  age:
    type: Number
    min: 0
    max: 25
  beenDone:
    type: Boolean
    label: "Neutered/spayed"
    autoform:
      trueLabel: "Neutered/spayed :)"
      falseLabel: "Fix your dog!"
  breed:
    type: String
    allowedValues: breeds
    autoform:
      search: true
      allowedValues: breeds
  likes:
    # No support in Semantic for multiple select dropdown yet
    # https://github.com/Semantic-Org/Semantic-UI/issues/847
    type: [String]
    optional: true
    allowedValues: things
  dislikes:
    type: [String]
    optional: true
    allowedValues: things
    autoform:
      type: "select-checkbox"
  faveThing:
    type: String
    optional: true
    allowedValues: things
    autoform:
      type: "select-radio"
)

Dogs.attachSchema dogSchema