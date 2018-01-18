require 'test_helper'

class PublicidadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @publicidad = publicidads(:one)
  end

  test "should get index" do
    get publicidads_url
    assert_response :success
  end

  test "should get new" do
    get new_publicidad_url
    assert_response :success
  end

  test "should create publicidad" do
    assert_difference('Publicidad.count') do
      post publicidads_url, params: { publicidad: { cliente_id: @publicidad.cliente_id, costo: @publicidad.costo, descripcion: @publicidad.descripcion, nombre: @publicidad.nombre, periodo_publicaci��n: @publicidad.periodo_publicaci��n } }
    end

    assert_redirected_to publicidad_url(Publicidad.last)
  end

  test "should show publicidad" do
    get publicidad_url(@publicidad)
    assert_response :success
  end

  test "should get edit" do
    get edit_publicidad_url(@publicidad)
    assert_response :success
  end

  test "should update publicidad" do
    patch publicidad_url(@publicidad), params: { publicidad: { cliente_id: @publicidad.cliente_id, costo: @publicidad.costo, descripcion: @publicidad.descripcion, nombre: @publicidad.nombre, periodo_publicaci��n: @publicidad.periodo_publicaci��n } }
    assert_redirected_to publicidad_url(@publicidad)
  end

  test "should destroy publicidad" do
    assert_difference('Publicidad.count', -1) do
      delete publicidad_url(@publicidad)
    end

    assert_redirected_to publicidads_url
  end
end
