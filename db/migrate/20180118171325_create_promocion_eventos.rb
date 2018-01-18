class CreatePromocionEventos < ActiveRecord::Migration[5.1]
  def change
    create_table :promocion_eventos do |t|
      t.string :nombre
      t.date :fecha
      t.text :descripcion
      t.integer :periodo_publicacion
      t.references :clientes, foreign_key: true
      t.float :costo

      t.timestamps
    end
  end
end
