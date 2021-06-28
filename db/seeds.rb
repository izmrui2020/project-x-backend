# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email: 'user@example.com', nickname: 'UOne', name: 'User One', password: "monkey67")

5.times do |num|
    num += 1
    Post.create!(
        title: "test post #{num}",
        description: "sample description for post #{num}"
    )
end

# t.string "title"
# t.string "oogiri"
# t.string "description"
# t.string "file_url"
# t.string "image_url"
# t.datetime "created_at", precision: 6, null: false
# t.datetime "updated_at", precision: 6, null: false

5.times do |num|
    num += 1
    Oogiri.create!(title: "Document #{num}", 
            description: "samplsamplesamplesamplesamplesamplesamplesamplesamplesamplesamplesamplesamplesample
                samplesamplesamplesamplesamplesamplesamplesamplesamplesamplesample",
            file_url: "https://drive.google.com/file/d/1D4sP_3U7xOTHxQ-gLPInAWtDLglskLU8/view?usp=sharing",
            image_url: "https://drive.google.com/file/d/1D4sP_3U7xOTHxQ-gLPInAWtDLglskLU8/view?usp=sharing",        
)
end
