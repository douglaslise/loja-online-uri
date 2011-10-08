require 'test_helper'

class CarrinhosControllerTest < ActionController::TestCase
  setup do
    @carrinho = carrinhos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:carrinhos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create carrinho" do
    assert_difference('Carrinho.count') do
      post :create, :carrinho => @carrinho.attributes
    end

    assert_redirected_to carrinho_path(assigns(:carrinho))
  end

  test "should show carrinho" do
    get :show, :id => @carrinho.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @carrinho.to_param
    assert_response :success
  end

  test "should update carrinho" do
    put :update, :id => @carrinho.to_param, :carrinho => @carrinho.attributes
    assert_redirected_to carrinho_path(assigns(:carrinho))
  end

  test "should destroy carrinho" do
    assert_difference('Carrinho.count', -1) do
      delete :destroy, :id => @carrinho.to_param
    end

    assert_redirected_to carrinhos_path
  end
end
