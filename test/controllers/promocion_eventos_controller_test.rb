require 'test_helper'

class PromocionEventosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @promocion_evento = promocion_eventos(:one)
  end

  test "should get index" do
    get promocion_eventos_url
    assert_response :success
  end

  test "should get new" do
    get new_promocion_evento_url
    assert_response :success
  end

  test "should create promocion_evento" do
    assert_difference('PromocionEvento.count') do
      post promocion_eventos_url, params: { promocion_evento: { cliente_id: @promocion_evento.cliente_id, costo: @promocion_evento.costo, descripcion: @promocion_evento.descripcion, fecha: @promocion_evento.fecha, nombre: @promocion_evento.nombre, periodo_publicacion: @promocion_evento.periodo_publicacion } }
    end

    assert_redirected_to promocion_evento_url(PromocionEvento.last)
  end

  test "should show promocion_evento" do
    get promocion_evento_url(@promocion_evento)
    assert_response :success
  end

  test "should get edit" do
    get edit_promocion_evento_url(@promocion_evento)
    assert_response :success
  end

  test "should update promocion_evento" do
    patch promocion_evento_url(@promocion_evento), params: { promocion_evento: { cliente_id: @promocion_evento.cliente_id, costo: @promocion_evento.costo, descripcion: @promocion_evento.descripcion, fecha: @promocion_evento.fecha, nombre: @promocion_evento.nombre, periodo_publicacion: @promocion_evento.periodo_publicacion } }
    assert_redirected_to promocion_evento_url(@promocion_evento)
  end

  test "should destroy promocion_evento" do
    assert_difference('PromocionEvento.count', -1) do
      delete promocion_evento_url(@promocion_evento)
    end

    assert_redirected_to promocion_eventos_url
  end
end
