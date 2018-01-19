require 'test_helper'

class PortadaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get portada_index_url
    assert_response :success
  end

end
