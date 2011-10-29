require 'test_helper'

class PedidosControllerTest < ActionController::TestCase
  setup do
    @pedido = pedidos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pedidos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pedido" do
    assert_difference('Pedido.count') do
      post :create, :pedido => @pedido.attributes
    end

    assert_redirected_to pedido_path(assigns(:pedido))
  end

  test "should show pedido" do
    get :show, :id => @pedido.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @pedido.to_param
    assert_response :success
  end

  test "should update pedido" do
    put :update, :id => @pedido.to_param, :pedido => @pedido.attributes
    assert_redirected_to pedido_path(assigns(:pedido))
  end

  test "should destroy pedido" do
    assert_difference('Pedido.count', -1) do
      delete :destroy, :id => @pedido.to_param
    end

    assert_redirected_to pedidos_path
  end
end
