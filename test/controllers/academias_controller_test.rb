require 'test_helper'

class AcademiasControllerTest < ActionController::TestCase
  setup do
    @academia = academias(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:academias)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create academia" do
    assert_difference('Academia.count') do
      post :create, academia: { cnpj: @academia.cnpj, endereco: @academia.endereco, nome: @academia.nome, telefone: @academia.telefone }
    end

    assert_redirected_to academia_path(assigns(:academia))
  end

  test "should show academia" do
    get :show, id: @academia
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @academia
    assert_response :success
  end

  test "should update academia" do
    patch :update, id: @academia, academia: { cnpj: @academia.cnpj, endereco: @academia.endereco, nome: @academia.nome, telefone: @academia.telefone }
    assert_redirected_to academia_path(assigns(:academia))
  end

  test "should destroy academia" do
    assert_difference('Academia.count', -1) do
      delete :destroy, id: @academia
    end

    assert_redirected_to academias_path
  end
end
