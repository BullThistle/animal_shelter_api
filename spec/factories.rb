FactoryBot.define do
  factory(:cat) do
    name(Faker::Zelda.character)
    breed(Faker::Cat.breed)
    sex("Male")
  end
  factory(:dog) do
    name(Faker::Fallout.character)
    breed(Faker::Dog.breed)
    sex("Female")
  end
end