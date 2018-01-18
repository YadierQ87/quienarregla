class CreateProveedorServicios < ActiveRecord::Migration[5.1]
  def change
    create_table :proveedor_servicios do |t|
      t.string :nombre
      t.string :telf_contacto
      t.string :celular
      t.text :direccion
      t.string :localidad
      t.string :references
      t.float :precio_min
      t.float :precio_standard
      t.float :precio_max
      t.boolean :garantia
      t.integer :tiempo_garantia_dias
      t.boolean :servicio_domicilio
      t.text :experiencia
      t.float :evaluacion
      t.text :etiquetas_busqueda
      t.text :detalles
      t.boolean :estado_activo
      t.timestamp :valido_hasta
      t.string :cuota_pagada
      t.string :float
      t.string :tipo_cliente
      t.references :categoria, foreign_key: true

      t.timestamps
    end
  end
end
