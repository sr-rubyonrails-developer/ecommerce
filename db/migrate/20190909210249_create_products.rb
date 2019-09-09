class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :nombre
      t.string :clave
      t.decimal :precio_de_venta
      t.integer :stock
      t.text :descripcion
      t.string :color
      t.string :talla

      t.timestamps
    end
  end
end
