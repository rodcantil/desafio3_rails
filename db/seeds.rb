10.times do |i|
    Documentaryfilm.create(title: Faker::Coffee.blend_name)
end

10.times do |i|
    Movie.create(title: Faker::Movie.title)
end


10.times do |i|
    Serie.create(title: Faker::Coffee.variety)
end

# NO SE PUDO ENCONTRAR SERIES NI DOCUMENTALES EN FAKER ASI QUE SE REEMPLAZO
# POR LO QUE SE USÓ FAKER DE CAFÉ UNA DEL TIPO BLEND Y OTRA DE LA VARIEDAD