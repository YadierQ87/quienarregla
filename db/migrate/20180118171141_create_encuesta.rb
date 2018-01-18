class CreateEncuesta < ActiveRecord::Migration[5.1]
  def change
    create_table :encuesta do |t|
      t.string :nombre
      t.date :fecha
      t.string :pregunta
      t.string :puntuacion
      t.string :aspectoEvaluar

      t.timestamps
    end
  end
end
