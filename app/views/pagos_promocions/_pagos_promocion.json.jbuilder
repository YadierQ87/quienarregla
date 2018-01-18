json.extract! pagos_promocion, :id, :cliente_id, :publicidad_id, :created_at, :updated_at
json.url pagos_promocion_url(pagos_promocion, format: :json)
