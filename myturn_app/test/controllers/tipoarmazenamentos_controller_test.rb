require 'test_helper'

class TipoarmazenamentosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipoarmazenamento = tipoarmazenamentos(:one)
  end

  test "should get index" do
    get tipoarmazenamentos_url
    assert_response :success
  end

  test "should get new" do
    get new_tipoarmazenamento_url
    assert_response :success
  end

  test "should create tipoarmazenamento" do
    assert_difference('Tipoarmazenamento.count') do
      post tipoarmazenamentos_url, params: { tipoarmazenamento: { descricao: @tipoarmazenamento.descricao } }
    end

    assert_redirected_to tipoarmazenamento_url(Tipoarmazenamento.last)
  end

  test "should show tipoarmazenamento" do
    get tipoarmazenamento_url(@tipoarmazenamento)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipoarmazenamento_url(@tipoarmazenamento)
    assert_response :success
  end

  test "should update tipoarmazenamento" do
    patch tipoarmazenamento_url(@tipoarmazenamento), params: { tipoarmazenamento: { descricao: @tipoarmazenamento.descricao } }
    assert_redirected_to tipoarmazenamento_url(@tipoarmazenamento)
  end

  test "should destroy tipoarmazenamento" do
    assert_difference('Tipoarmazenamento.count', -1) do
      delete tipoarmazenamento_url(@tipoarmazenamento)
    end

    assert_redirected_to tipoarmazenamentos_url
  end
end
