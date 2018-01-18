class CreatePagosPublicidads < ActiveRecord::Migration[5.1]
  def change
    create_table :pagos_publicidads do |t|
      t.references :cliente, foreign_key: true
      t.references :promocion_eventos, foreign_key: true

      t.timestamps
    end
  end
end
