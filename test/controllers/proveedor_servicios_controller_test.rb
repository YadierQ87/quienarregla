require 'test_helper'

class ProveedorServiciosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @proveedor_servicio = proveedor_servicios(:one)
  end

  test "should get index" do
    get proveedor_servicios_url
    assert_response :success
  end

  test "should get new" do
    get new_proveedor_servicio_url
    assert_response :success
  end

  test "should create proveedor_servicio" do
    assert_difference('ProveedorServicio.count') do
      post proveedor_servicios_url, params: { proveedor_servicio: { categoria_id: @proveedor_servicio.categoria_id, celular: @proveedor_servicio.celular, cuota_pagada: @proveedor_servicio.cuota_pagada, detalles: @proveedor_servicio.detalles, direccion: @proveedor_servicio.direccion, estado_activo: @proveedor_servicio.estado_activo, etiquetas_busqueda: @proveedor_servicio.etiquetas_busqueda, evaluacion: @proveedor_servicio.evaluacion, experiencia: @proveedor_servicio.experiencia, float: @proveedor_servicio.float, garantia: @proveedor_servicio.garantia, localidad: @proveedor_servicio.localidad, nombre: @proveedor_servicio.nombre, precio_max: @proveedor_servicio.precio_max, precio_min: @proveedor_servicio.precio_min, precio_standard: @proveedor_servicio.precio_standard, references: @proveedor_servicio.references, servicio_domicilio: @proveedor_servicio.servicio_domicilio, telf_contacto: @proveedor_servicio.telf_contacto, tiempo_garantia_dias: @proveedor_servicio.tiempo_garantia_dias, tipo_cliente: @proveedor_servicio.tipo_cliente, valido_hasta: @proveedor_servicio.valido_hasta } }
    end

    assert_redirected_to proveedor_servicio_url(ProveedorServicio.last)
  end

  test "should show proveedor_servicio" do
    get proveedor_servicio_url(@proveedor_servicio)
    assert_response :success
  end

  test "should get edit" do
    get edit_proveedor_servicio_url(@proveedor_servicio)
    assert_response :success
  end

  test "should update proveedor_servicio" do
    patch proveedor_servicio_url(@proveedor_servicio), params: { proveedor_servicio: { categoria_id: @proveedor_servicio.categoria_id, celular: @proveedor_servicio.celular, cuota_pagada: @proveedor_servicio.cuota_pagada, detalles: @proveedor_servicio.detalles, direccion: @proveedor_servicio.direccion, estado_activo: @proveedor_servicio.estado_activo, etiquetas_busqueda: @proveedor_servicio.etiquetas_busqueda, evaluacion: @proveedor_servicio.evaluacion, experiencia: @proveedor_servicio.experiencia, float: @proveedor_servicio.float, garantia: @proveedor_servicio.garantia, localidad: @proveedor_servicio.localidad, nombre: @proveedor_servicio.nombre, precio_max: @proveedor_servicio.precio_max, precio_min: @proveedor_servicio.precio_min, precio_standard: @proveedor_servicio.precio_standard, references: @proveedor_servicio.references, servicio_domicilio: @proveedor_servicio.servicio_domicilio, telf_contacto: @proveedor_servicio.telf_contacto, tiempo_garantia_dias: @proveedor_servicio.tiempo_garantia_dias, tipo_cliente: @proveedor_servicio.tipo_cliente, valido_hasta: @proveedor_servicio.valido_hasta } }
    assert_redirected_to proveedor_servicio_url(@proveedor_servicio)
  end

  test "should destroy proveedor_servicio" do
    assert_difference('ProveedorServicio.count', -1) do
      delete proveedor_servicio_url(@proveedor_servicio)
    end

    assert_redirected_to proveedor_servicios_url
  end
end
