require "open-uri"
House.destroy_all

prop1 = House.new(
  provincia: 'Mendoza',
  departamento: 'Godoy Cruz',
  localidad: 'Bombal',
  barrio: 'Bombal Sur',
  domicilio: 'Roque Saen Peña 1265',
  tipo: 'Alquiler',
  condicion: 'a estrenar',
  precio: '$100.000',
  descripcion: 'Todo muy bonito, bien ubicado',
  # foto: ,
  dormitorio: 2,
  bano: 2,
  supcubierta: 100,
  suptotal: 120,
  cochera: 'sí',
  mascota: true,
  expensa: true
)
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
  # foto: ,
  dormitorio: 4,
  bano: 3,
  supcubierta: 1200,
  suptotal: 700,
  cochera: 'sí',
  mascota: true,
  expensa: false
)
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
  #foto: ,
  dormitorio: 2,
  bano: 2,
  supcubierta: 90,
  suptotal: 95,
  cochera: 'sí',
  mascota: false,
  expensa: true
)
prop3.save

puts "#{House.all.size} propiedades creadas correctamente"
