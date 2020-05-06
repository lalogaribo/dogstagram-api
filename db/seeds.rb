# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


5.times do 
  Dog.create(name: Faker::Creature::Dog.unique.name, breed: Faker::Creature::Dog.breed)
end


Post.create(image_url: 'https://images.dog.ceo/breeds/chow/n02112137_3484.jpg', caption: Faker::Creature::Dog.meme_phrase, dog_id: 1)
Post.create(image_url: 'https://images.dog.ceo/breeds/shiba/shiba-12.jpg', caption: Faker::Creature::Dog.meme_phrase, dog_id: 2)
Post.create(image_url: 'https://images.dog.ceo/breeds/retriever-golden/n02099601_100.jpg', caption: Faker::Creature::Dog.meme_phrase, dog_id: 3)
Post.create(image_url: 'https://images.dog.ceo/breeds/setter-english/n02100735_2375.jpg', caption: Faker::Creature::Dog.meme_phrase, dog_id: 1)
Post.create(image_url: 'https://images.dog.ceo/breeds/husky/n02110185_10171.jpg', caption: Faker::Creature::Dog.meme_phrase, dog_id: 4)
Post.create(image_url: 'https://images.dog.ceo/breeds/papillon/n02086910_4330.jpg', caption: Faker::Creature::Dog.meme_phrase, dog_id: 5)