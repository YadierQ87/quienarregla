require 'test_helper'

class PagosPublicidadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pagos_publicidad = pagos_publicidads(:one)
  end

  test "should get index" do
    get pagos_publicidads_url
    assert_response :success
  end

  test "should get new" do
    get new_pagos_publicidad_url
    assert_response :success
  end

  test "should create pagos_publicidad" do
    assert_difference('PagosPublicidad.count') do
      post pagos_publicidads_url, params: { pagos_publicidad: { cliente_id: @pagos_publicidad.cliente_id, promocionEventos_id: @pagos_publicidad.promocionEventos_id } }
    end

    assert_redirected_to pagos_publicidad_url(PagosPublicidad.last)
  end

  test "should show pagos_publicidad" do
    get pagos_publicidad_url(@pagos_publicidad)
    assert_response :success
  end

  test "should get edit" do
    get edit_pagos_publicidad_url(@pagos_publicidad)
    assert_response :success
  end

  test "should update pagos_publicidad" do
    patch pagos_publicidad_url(@pagos_publicidad), params: { pagos_publicidad: { cliente_id: @pagos_publicidad.cliente_id, promocionEventos_id: @pagos_publicidad.promocionEventos_id } }
    assert_redirected_to pagos_publicidad_url(@pagos_publicidad)
  end

  test "should destroy pagos_publicidad" do
    assert_difference('PagosPublicidad.count', -1) do
      delete pagos_publicidad_url(@pagos_publicidad)
    end

    assert_redirected_to pagos_publicidads_url
  end
end
