class CreateServices < ActiveRecord::Migration[7.0]
  def change
    create_table :services do |t|
      t.integer :ac
      t.boolean :amoblado
      t.integer :antiguedad
      t.boolean :internet
      t.boolean :piscina
      t.boolean :cable
      t.boolean :calefcentr
      t.boolean :telefono
      t.integer :cantambientes
      t.boolean :zonaescolar
      t.integer :barrioprivado
      t.integer :pisos
      t.boolean :balcon
      t.boolean :patio
      t.references :house, null: false, foreign_key: true

      t.timestamps
    end
  end
end
