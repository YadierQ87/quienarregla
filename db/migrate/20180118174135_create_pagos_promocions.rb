class CreatePagosPromocions < ActiveRecord::Migration[5.1]
  def change
    create_table :pagos_promocions do |t|
      t.references :clientes, foreign_key: true
      t.references :publicidad, foreign_key: true

      t.timestamps
    end
  end
end
