json.extract! cliente, :id, :nombre, :telf_contacto, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
