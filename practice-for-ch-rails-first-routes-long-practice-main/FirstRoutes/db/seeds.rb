# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)




user1 = User.create!(username: 'dizzysky')
user2 = User.create!(username: 'railsman')


artwork1 = Artwork.create!(title: 'bonzo', image_url: 'www.image1.com', artist_id: user1.id)
artwork2 = Artwork.create!(title: 'Artwork2', image_url: 'www.image2.com', artist_id: user1.id)
artwork3 = Artwork.create!(title: 'Artwork3', image_url: 'www.image3.com', artist_id: user2.id)


ArtworkShare.create!(artwork_id: artwork1.id, viewer_id: user2.id)
ArtworkShare.create!(artwork_id: artwork3.id, viewer_id: user1.id)