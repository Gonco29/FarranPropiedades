require "open-uri"
House.destroy_all


puts "Creando usuarios..."

gonchi = User.new(
  email: "gonchi@gmail.com",
  password: "123456"
)
photo_gonchi = URI.open("https://kitt.lewagon.com/placeholder/users/gonco29")

gonchi.photo.attach(io: photo_gonchi, filename: "fotogonchi.png", content_type: "image/png")

gonchi.save


puts "#{User.all.size} usuarios creados correctamente"
puts "Creando Propiedades..."

prop1 = House.new(
  provincia: 'Mendoza',
  departamento: 'Godoy Cruz',
  localidad: 'Bombal',
  barrio: 'Bombal Sur',
  domicilio: 'Roque Saen Peña 1265',
  tipo: 'Alquiler',
  condicion: 'a estrenar',
  precio: '100.000',
  descripcion: 'Todo muy bonito, bien ubicado',
  dormitorio: 2,
  bano: 2,
  supcubierta: 100,
  suptotal: 120,
  cochera: 'sí',
  mascota: true,
  expensa: true,
  user_id: 1
)

photo_prop1_1 = URI.open("https://cloudinary.com/console/c-18f2dff3586fef41e541da3daede84/media_library/folders/c361179f6d8972da8c2fa02595c5a53424/asset/2bcc0e8a3043354b04b838805aa6670d/manage?context=manage")
photo_prop1_2 = URI.open("https://cloudinary.com/console/c-18f2dff3586fef41e541da3daede84/media_library/folders/c361179f6d8972da8c2fa02595c5a53424/asset/36c9caf9e7723570f67d0738b3629889/manage?context=manage")
photo_prop1_3 = URI.open("https://cloudinary.com/console/c-18f2dff3586fef41e541da3daede84/media_library/folders/c361179f6d8972da8c2fa02595c5a53424/asset/1ed536aa4de0b5bbbdc61732fd41e082/manage?context=manage")

prop1.photos.attach(io: photo_prop1_1, filename: "fotoprop1_1.png", content_type: "image/png")
prop1.photos.attach(io: photo_prop1_2, filename: "fotoprop1_2.png", content_type: "image/png")
prop1.photos.attach(io: photo_prop1_3, filename: "fotoprop1_3.png", content_type: "image/png")

prop1.save

prop2 = House.new(
  provincia: 'Mendoza',
  departamento: 'Luján',
  localidad: 'La Puntilla',
  barrio: 'Huerto del Sol',
  domicilio: 'Jacarandá 7431',
  tipo: 'Venta',
  condicion: 'en perfectas condiciones',
  precio: 'U$S 3.000.000',
  descripcion: 'Jardín enorme. Acá vivió el Gonchi',
  dormitorio: 4,
  bano: 3,
  supcubierta: 1200,
  suptotal: 700,
  cochera: 'sí',
  mascota: true,
  expensa: false,
  user_id: 1
)

photo_prop2_1 = URI.open("https://cloudinary.com/console/c-18f2dff3586fef41e541da3daede84/media_library/folders/c361179f6d8972da8c2fa02595c5a53424/asset/cd63f480103c8133f2ec20c6d85ff149/manage?context=manage")
photo_prop2_2 = URI.open("https://cloudinary.com/console/c-18f2dff3586fef41e541da3daede84/media_library/folders/c361179f6d8972da8c2fa02595c5a53424/asset/c874f24ee66ecb73e98256e642185382/manage?context=manage")


prop2.photos.attach(io: photo_prop2_1, filename: "fotoprop2_1.png", content_type: "image/png")
prop2.photos.attach(io: photo_prop2_2, filename: "fotoprop2_2.png", content_type: "image/png")

prop2.save

prop3 = House.new(
  provincia: 'Mendoza',
  departamento: 'Ciudad',
  localidad: '5ta Sección',
  # barrio: ,
  domicilio: 'Emilio Civit 380',
  tipo: 'Alquiler',
  condicion: 'a estrenar',
  precio: '$150.000',
  descripcion: 'Cerca del parque, linda vista',
  dormitorio: 2,
  bano: 2,
  supcubierta: 90,
  suptotal: 95,
  cochera: 'sí',
  mascota: false,
  expensa: true,
  user_id: 1
)

photo_prop2_1 = URI.open("https://cloudinary.com/console/c-18f2dff3586fef41e541da3daede84/media_library/folders/c361179f6d8972da8c2fa02595c5a53424/asset/f074fbf81ecc80e7754651e4fc90c53c/manage?context=manage")

prop3.photos.attach(io: photo_prop3_1, filename: "fotoprop3_1.png", content_type: "image/png")

prop3.save

puts "#{House.all.size} propiedades creadas correctamente"
