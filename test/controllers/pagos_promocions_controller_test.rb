require 'test_helper'

class PagosPromocionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pagos_promocion = pagos_promocions(:one)
  end

  test "should get index" do
    get pagos_promocions_url
    assert_response :success
  end

  test "should get new" do
    get new_pagos_promocion_url
    assert_response :success
  end

  test "should create pagos_promocion" do
    assert_difference('PagosPromocion.count') do
      post pagos_promocions_url, params: { pagos_promocion: { cliente_id: @pagos_promocion.cliente_id, publicidad_id: @pagos_promocion.publicidad_id } }
    end

    assert_redirected_to pagos_promocion_url(PagosPromocion.last)
  end

  test "should show pagos_promocion" do
    get pagos_promocion_url(@pagos_promocion)
    assert_response :success
  end

  test "should get edit" do
    get edit_pagos_promocion_url(@pagos_promocion)
    assert_response :success
  end

  test "should update pagos_promocion" do
    patch pagos_promocion_url(@pagos_promocion), params: { pagos_promocion: { cliente_id: @pagos_promocion.cliente_id, publicidad_id: @pagos_promocion.publicidad_id } }
    assert_redirected_to pagos_promocion_url(@pagos_promocion)
  end

  test "should destroy pagos_promocion" do
    assert_difference('PagosPromocion.count', -1) do
      delete pagos_promocion_url(@pagos_promocion)
    end

    assert_redirected_to pagos_promocions_url
  end
end
