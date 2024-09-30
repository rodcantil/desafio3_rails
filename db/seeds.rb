10.times do |i|
    Documentaryfilm.create(title: Faker::Coffee.blend_name)
end

10.times do |i|
    Movie.create(title: Faker::Movie.title)
end


10.times do |i|
    Serie.create(title: Faker::Movie.title)
end