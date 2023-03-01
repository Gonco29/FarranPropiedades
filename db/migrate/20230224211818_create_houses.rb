class CreateHouses < ActiveRecord::Migration[7.0]
  def change
    create_table :houses do |t|
      t.string :provincia
      t.string :departamento
      t.string :localidad
      t.string :barrio
      t.string :domicilio
      t.string :tipo
      t.string :condicion
      t.string :precio
      t.text :descripcion
      t.string :foto
      t.integer :dormitorio
      t.integer :bano
      t.integer :supcubierta
      t.integer :suptotal
      t.string :cochera
      t.boolean :mascota
      t.boolean :expensa

      t.timestamps
    end
  end
end
