json.extract! promocion_evento, :id, :nombre, :fecha, :descripcion, :periodo_publicacion, :cliente_id, :costo, :created_at, :updated_at
json.url promocion_evento_url(promocion_evento, format: :json)
