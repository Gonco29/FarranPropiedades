require "open-uri"
House.destroy_all
User.destroy_all


puts "Creando usuarios..."

gonchi = User.new(
  email: "gonchi@mail.com",
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
  tipo: 'Departamento',
  condicion: 'alquiler',
  precio: '100.000',
  descripcion: 'Todo muy bonito, bien ubicado',
  dormitorio: 2,
  bano: 2,
  supcubierta: 100,
  suptotal: 120,
  cochera: 'sí',
  mascota: true,
  expensa: true,
  address: 'Roque Saen Peña 1265, Godoy Cruz, Mendoza',
  user_id: 1
)

photo_prop1_1 = URI.open("https://res.cloudinary.com/dmizpueuw/image/upload/v1678575318/FARRAN%20PROPIEDADES/scott-webb-1ddol8rgUH8-unsplash_jvxuxh.jpg")
photo_prop1_2 = URI.open("https://res.cloudinary.com/dmizpueuw/image/upload/v1678575320/FARRAN%20PROPIEDADES/patrick-perkins-3wylDrjxH-E-unsplash_jmmwrk.jpg")
photo_prop1_3 = URI.open("https://res.cloudinary.com/dmizpueuw/image/upload/v1678575319/FARRAN%20PROPIEDADES/collov-home-design-H-1j_s0dhCw-unsplash_v1lufy.jpg")

prop1.photos.attach(io: photo_prop1_1, filename: "fotoprop1_1.png", content_type: "image/png")
prop1.photos.attach(io: photo_prop1_2, filename: "fotoprop1_2.png", content_type: "image/png")
prop1.photos.attach(io: photo_prop1_3, filename: "fotoprop1_3.png", content_type: "image/png")

prop1.save!


prop2 = House.new(
  provincia: 'Mendoza',
  departamento: 'Luján',
  localidad: 'La Puntilla',
  barrio: 'Huerto del Sol',
  domicilio: 'Jacarandá 7431',
  tipo: 'Casa',
  condicion: 'Venta',
  precio: 'U$S 3.000.000',
  descripcion: 'Jardín enorme. Acá vivió el Gonchi',
  dormitorio: 4,
  bano: 3,
  supcubierta: 700,
  suptotal: 1200,
  cochera: 'sí',
  mascota: true,
  expensa: false,
  address: 'Jacarandá 7431, Luján, Mendoza',
  user_id: 1
)

photo_prop2_1 = URI.open("https://res.cloudinary.com/dmizpueuw/image/upload/v1678575316/FARRAN%20PROPIEDADES/ralph-ravi-kayden-2d4lAQAlbDA-unsplash_sqhmum.jpg")
photo_prop2_2 = URI.open("https://res.cloudinary.com/dmizpueuw/image/upload/v1678575315/FARRAN%20PROPIEDADES/douglas-sheppard-9rYfG8sWRVo-unsplash_i5iduj.jpg")


prop2.photos.attach(io: photo_prop2_1, filename: "fotoprop2_1.png", content_type: "image/png")
prop2.photos.attach(io: photo_prop2_2, filename: "fotoprop2_2.png", content_type: "image/png")

prop2.save


prop3 = House.new(
  provincia: 'Mendoza',
  departamento: 'Capital',
  localidad: '5ta Sección',
  # barrio: ,
  domicilio: 'Emilio Civit 685',
  tipo: 'Cabaña',
  condicion: 'Permuta',
  precio: '$150.000',
  descripcion: 'Cerca del parque, linda vista',
  dormitorio: 2,
  bano: 2,
  supcubierta: 90,
  suptotal: 95,
  cochera: 'sí',
  mascota: false,
  expensa: true,
  address: 'Emilio Civit 685, Capital, Mendoza',
  user_id: 1
)

photo_prop3_1 = URI.open("https://res.cloudinary.com/dmizpueuw/image/upload/v1678295069/FARRAN%20PROPIEDADES/sidekix-media-I58Xjx0zzBQ-unsplash_zyuw5y.jpg")

prop3.photos.attach(io: photo_prop3_1, filename: "fotoprop3_1.png", content_type: "image/png")

prop3.save

prop4 = House.new(
  provincia: 'Mendoza',
  departamento: 'Guaymallén',
  localidad: 'Villanueva',
  # barrio: ,
  domicilio: 'Av. de Acceso Este 3280',
  tipo: 'Casa',
  condicion: 'Venta',
  precio: '$200.000',
  descripcion: 'Cerca del parque, linda vista',
  dormitorio: 2,
  bano: 2,
  supcubierta: 190,
  suptotal: 295,
  cochera: 'no',
  mascota: false,
  expensa: true,
  address: 'Av. de Acceso Este 3280, Guaymallén, Mendoza',
  user_id: 1
)

photo_prop4_1 = URI.open("https://res.cloudinary.com/dmizpueuw/image/upload/v1678295069/FARRAN%20PROPIEDADES/sidekix-media-I58Xjx0zzBQ-unsplash_zyuw5y.jpg")

prop4.photos.attach(io: photo_prop4_1, filename: "fotoprop3_1.png", content_type: "image/png")

prop4.save

prop5 = House.new(
  provincia: 'Mendoza',
  departamento: 'Luján',
  localidad: 'La Puntilla',
  barrio: 'Barrio El Huerto',
  domicilio: 'El Salvador 7649',
  tipo: 'Casa',
  condicion: 'Venta',
  precio: 'U$S 1.000.000',
  descripcion: 'Jardín enorme. 2 PLANTAS. PLANTA ALTA: 1 DORMITORIO, BAÑO, TARRAZA. PLANTA BAJA: 2 DORMITORIOS, LIVING COMEDOR, COCINA, BAÑO, PATIO CON CHURRASQUERA, COCHERA',
  dormitorio: 4,
  bano: 3,
  supcubierta: 700,
  suptotal: 1200,
  cochera: 'sí',
  mascota: true,
  expensa: false,
  address: 'El Salvador 7649, Luján, Mendoza',
  user_id: 1
)

photo_prop5_1 = URI.open("http://cdn.home-designing.com/wp-content/uploads/2017/05/wood-white-and-charcoal-modern-exterior-paint-themes.jpg")
photo_prop5_2 = URI.open("https://res.cloudinary.com/dmizpueuw/image/upload/v1678575315/FARRAN%20PROPIEDADES/douglas-sheppard-9rYfG8sWRVo-unsplash_i5iduj.jpg")


prop5.photos.attach(io: photo_prop5_1, filename: "fotoprop2_1.png", content_type: "image/png")
prop5.photos.attach(io: photo_prop5_2, filename: "fotoprop2_2.png", content_type: "image/png")

prop5.save

prop6 = House.new(
  provincia: 'Mendoza',
  departamento: 'Las Heras',
  localidad: 'Las Heras',
  barrio: 'Barrio Pipipipipi',
  domicilio: 'Av. San Martin 2430',
  tipo: 'Departamento',
  condicion: 'Venta',
  precio: 'U$S 1.000.000',
  descripcion: 'Jardín enorme. 2 PLANTAS. PLANTA ALTA: 1 DORMITORIO, BAÑO, TARRAZA. PLANTA BAJA: 2 DORMITORIOS, LIVING COMEDOR, COCINA, BAÑO, PATIO CON CHURRASQUERA, COCHERA',
  dormitorio: 4,
  bano: 3,
  supcubierta: 700,
  suptotal: 1200,
  cochera: 'sí',
  mascota: true,
  expensa: false,
  address: 'Av. San Martin 2430, Las Heras, Mendoza',
  user_id: 1
)

photo_prop6_1 = URI.open("https://i.pinimg.com/564x/ae/90/42/ae904234aaf4c6510b37bc22080868ff.jpg")
photo_prop6_2 = URI.open("https://res.cloudinary.com/dmizpueuw/image/upload/v1678575315/FARRAN%20PROPIEDADES/douglas-sheppard-9rYfG8sWRVo-unsplash_i5iduj.jpg")


prop6.photos.attach(io: photo_prop6_1, filename: "fotoprop2_1.png", content_type: "image/png")
prop6.photos.attach(io: photo_prop6_2, filename: "fotoprop2_2.png", content_type: "image/png")

prop6.save

prop7 = House.new(
  provincia: 'Mendoza',
  departamento: 'Maipú',
  localidad: '',
  barrio: '',
  domicilio: 'J. A. Maza 2084',
  tipo: 'Casa',
  condicion: 'Alquiler',
  precio: 'U$S 1.000.000',
  descripcion: 'Jardín enorme. 2 PLANTAS. PLANTA ALTA: 1 DORMITORIO, BAÑO, TARRAZA. PLANTA BAJA: 2 DORMITORIOS, LIVING COMEDOR, COCINA, BAÑO, PATIO CON CHURRASQUERA, COCHERA',
  dormitorio: 4,
  bano: 3,
  supcubierta: 700,
  suptotal: 1200,
  cochera: 'sí',
  mascota: true,
  expensa: false,
  address: 'J. A. Maza 2084, Maipú, Mendoza',
  user_id: 1
)

photo_prop7_1 = URI.open("https://st.hzcdn.com/simgs/64c100c503e7abd5_4-5999/home-design.jpg")
photo_prop7_2 = URI.open("https://res.cloudinary.com/dmizpueuw/image/upload/v1678575315/FARRAN%20PROPIEDADES/douglas-sheppard-9rYfG8sWRVo-unsplash_i5iduj.jpg")


prop7.photos.attach(io: photo_prop7_1, filename: "fotoprop2_1.png", content_type: "image/png")
prop7.photos.attach(io: photo_prop7_2, filename: "fotoprop2_2.png", content_type: "image/png")

prop7.save

prop8 = House.new(
  provincia: 'Mendoza',
  departamento: 'Godoy Cruz',
  localidad: 'Godoy Cruz',
  barrio: 'Bombal Sur',
  domicilio: 'Arizu 143',
  tipo: 'Casa',
  condicion: 'Venta',
  precio: 'U$S 1.000.000',
  descripcion: 'Jardín enorme. 2 PLANTAS. PLANTA ALTA: 1 DORMITORIO, BAÑO, TARRAZA. PLANTA BAJA: 2 DORMITORIOS, LIVING COMEDOR, COCINA, BAÑO, PATIO CON CHURRASQUERA, COCHERA',
  dormitorio: 4,
  bano: 3,
  supcubierta: 700,
  suptotal: 1200,
  cochera: 'sí',
  mascota: true,
  expensa: false,
  address: 'Arizu 143, Godoy Cruz, Mendoza',
  user_id: 1
)

photo_prop8_1 = URI.open("https://st.hzcdn.com/simgs/71012a10000632cd_4-3293/home-design.jpg")
photo_prop8_2 = URI.open("https://res.cloudinary.com/dmizpueuw/image/upload/v1678575315/FARRAN%20PROPIEDADES/douglas-sheppard-9rYfG8sWRVo-unsplash_i5iduj.jpg")


prop8.photos.attach(io: photo_prop8_1, filename: "fotoprop2_1.png", content_type: "image/png")
prop8.photos.attach(io: photo_prop8_2, filename: "fotoprop2_2.png", content_type: "image/png")

prop8.save


puts "#{House.all.size} propiedades creadas correctamente"
