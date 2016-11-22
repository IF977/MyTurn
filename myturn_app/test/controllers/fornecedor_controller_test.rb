require 'test_helper'

class FornecedorControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get fornecedor_new_url
    assert_response :success
  end

end
