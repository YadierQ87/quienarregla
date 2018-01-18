class CreateSubcategoria < ActiveRecord::Migration[5.1]
  def change
    create_table :subcategoria do |t|
      t.string :nombre
      t.references :categoria, foreign_key: true

      t.timestamps
    end
  end
end
