json.extract! encuestum, :id, :nombre, :fecha, :pregunta, :puntuacion, :aspectoEvaluar, :created_at, :updated_at
json.url encuestum_url(encuestum, format: :json)
