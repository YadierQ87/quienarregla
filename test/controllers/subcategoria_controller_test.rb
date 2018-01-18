require 'test_helper'

class SubcategoriaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subcategorium = subcategoria(:one)
  end

  test "should get index" do
    get subcategoria_url
    assert_response :success
  end

  test "should get new" do
    get new_subcategorium_url
    assert_response :success
  end

  test "should create subcategorium" do
    assert_difference('Subcategorium.count') do
      post subcategoria_url, params: { subcategorium: { categorias_id: @subcategorium.categorias_id, nombre: @subcategorium.nombre } }
    end

    assert_redirected_to subcategorium_url(Subcategorium.last)
  end

  test "should show subcategorium" do
    get subcategorium_url(@subcategorium)
    assert_response :success
  end

  test "should get edit" do
    get edit_subcategorium_url(@subcategorium)
    assert_response :success
  end

  test "should update subcategorium" do
    patch subcategorium_url(@subcategorium), params: { subcategorium: { categorias_id: @subcategorium.categorias_id, nombre: @subcategorium.nombre } }
    assert_redirected_to subcategorium_url(@subcategorium)
  end

  test "should destroy subcategorium" do
    assert_difference('Subcategorium.count', -1) do
      delete subcategorium_url(@subcategorium)
    end

    assert_redirected_to subcategoria_url
  end
end
