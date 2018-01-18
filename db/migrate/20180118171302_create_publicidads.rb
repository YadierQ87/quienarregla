class CreatePublicidads < ActiveRecord::Migration[5.1]
  def change
    create_table :publicidads do |t|
      t.string :nombre
      t.date :periodo_publicacion
      t.references :clientes, foreign_key: true
      t.float :costo
      t.text :descripcion

      t.timestamps
    end
  end
end
