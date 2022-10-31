# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

pets = [
  {

    name: "Pickles",
    age: 7,
    enjoys: "Eating abominations that should not be known to man or beast.",
    image:
      "https://images.pexels.com/photos/39317/chihuahua-dog-puppy-cute-39317.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  },
  {

    name: "Espio",
    age: 2,
    enjoys: "Blending in with the crowd.",
    image:
      "https://images.pexels.com/photos/751687/pexels-photo-751687.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  },
  {

    name: "Mr Krabs",
    age: 23,
    enjoys: "Not being held by arrogant little kids.",
    image: "https://images.pexels.com/photos/7237731/pexels-photo-7237731.jpeg",
  },
  {

    name: "Rupert",
    age: 2,
    enjoys: "Croak-a-Cola and lollihops.",
    image:
      "https://images.pexels.com/photos/45863/frog-butterfly-pond-mirroring-45863.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  },
  {

    name: "Mr. J",
    age: 4,
    enjoys: "Eating Mice Crispies and knocking glasses off counters.",
    image:
      "https://images.pexels.com/photos/69932/tabby-cat-close-up-portrait-69932.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  },
  {

    name: "Hamster",
    age: 1.5,
    enjoys: "Taking the wheekends off to enjoy some veggies.",
    image:
      "https://images.pexels.com/photos/10926606/pexels-photo-10926606.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  },
  {

    name: "Big Man",
    age: 15,
    enjoys: 'Being the 5 time winner of the "Rolliest-Polly."',
    image:
      "https://images.pexels.com/photos/12568711/pexels-photo-12568711.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  },
  {

    name: "Dog",
    age: 3,
    enjoys: "Getting betta every day at being a fish.",
    image:
      "https://images.pexels.com/photos/325044/pexels-photo-325044.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  },
  {

    name: "Jojo",
    age: 25,
    enjoys: "Waking his owners up at 3am.",
    image:
      "https://images.pexels.com/photos/11615613/pexels-photo-11615613.jpeg",
  },
];
  
  pets.each do |each_pet|
    Pet.create each_pet
    puts "creating pet #{each_pet}"
  end