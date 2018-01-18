class CreateLocalidades < ActiveRecord::Migration[5.1]
  def change
    create_table :localidades do |t|
      t.string :nombre
      t.references :municipios, foreign_key: true

      t.timestamps
    end
  end
end
