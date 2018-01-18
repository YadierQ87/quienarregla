# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180118181023) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categoria", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.string "nombre"
    t.string "telf_contacto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "encuesta", force: :cascade do |t|
    t.string "nombre"
    t.date "fecha"
    t.string "pregunta"
    t.string "puntuacion"
    t.string "aspectoEvaluar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "localidades", force: :cascade do |t|
    t.string "nombre"
    t.bigint "municipios_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["municipios_id"], name: "index_localidades_on_municipios_id"
  end

  create_table "municipios", force: :cascade do |t|
    t.string "nombre"
    t.bigint "provincia_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["provincia_id"], name: "index_municipios_on_provincia_id"
  end

  create_table "pagos_promocions", force: :cascade do |t|
    t.bigint "clientes_id"
    t.bigint "publicidad_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clientes_id"], name: "index_pagos_promocions_on_clientes_id"
    t.index ["publicidad_id"], name: "index_pagos_promocions_on_publicidad_id"
  end

  create_table "pagos_publicidads", force: :cascade do |t|
    t.bigint "cliente_id"
    t.bigint "promocion_eventos_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_pagos_publicidads_on_cliente_id"
    t.index ["promocion_eventos_id"], name: "index_pagos_publicidads_on_promocion_eventos_id"
  end

  create_table "promocion_eventos", force: :cascade do |t|
    t.string "nombre"
    t.date "fecha"
    t.text "descripcion"
    t.integer "periodo_publicacion"
    t.bigint "clientes_id"
    t.float "costo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clientes_id"], name: "index_promocion_eventos_on_clientes_id"
  end

  create_table "proveedor_servicios", force: :cascade do |t|
    t.string "nombre"
    t.string "telf_contacto"
    t.string "celular"
    t.text "direccion"
    t.string "localidad"
    t.string "references"
    t.float "precio_min"
    t.float "precio_standard"
    t.float "precio_max"
    t.boolean "garantia"
    t.integer "tiempo_garantia_dias"
    t.boolean "servicio_domicilio"
    t.text "experiencia"
    t.float "evaluacion"
    t.text "etiquetas_busqueda"
    t.text "detalles"
    t.boolean "estado_activo"
    t.datetime "valido_hasta"
    t.string "cuota_pagada"
    t.string "float"
    t.string "tipo_cliente"
    t.bigint "categoria_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["categoria_id"], name: "index_proveedor_servicios_on_categoria_id"
  end

  create_table "provincia", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "publicidads", force: :cascade do |t|
    t.string "nombre"
    t.date "periodo_publicacion"
    t.bigint "clientes_id"
    t.float "costo"
    t.text "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clientes_id"], name: "index_publicidads_on_clientes_id"
  end

  create_table "subcategoria", force: :cascade do |t|
    t.string "nombre"
    t.bigint "categoria_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["categoria_id"], name: "index_subcategoria_on_categoria_id"
  end

  add_foreign_key "localidades", "municipios", column: "municipios_id"
  add_foreign_key "municipios", "provincia", column: "provincia_id"
  add_foreign_key "pagos_promocions", "clientes", column: "clientes_id"
  add_foreign_key "pagos_promocions", "publicidads"
  add_foreign_key "pagos_publicidads", "clientes"
  add_foreign_key "pagos_publicidads", "promocion_eventos", column: "promocion_eventos_id"
  add_foreign_key "promocion_eventos", "clientes", column: "clientes_id"
  add_foreign_key "proveedor_servicios", "categoria", column: "categoria_id"
  add_foreign_key "publicidads", "clientes", column: "clientes_id"
  add_foreign_key "subcategoria", "categoria", column: "categoria_id"
end
