class CreateClientes < ActiveRecord::Migration[5.1]
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :telf_contacto

      t.timestamps
    end
  end
end
