require 'test_helper'

class TipoArmazenamentoControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get tipo_armazenamento_new_url
    assert_response :success
  end

end
