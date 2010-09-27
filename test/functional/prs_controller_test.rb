require 'test_helper'

class PrsControllerTest < ActionController::TestCase
  setup do
    @pr = prs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pr" do
    assert_difference('Pr.count') do
      post :create, :pr => @pr.attributes
    end

    assert_redirected_to pr_path(assigns(:pr))
  end

  test "should show pr" do
    get :show, :id => @pr.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @pr.to_param
    assert_response :success
  end

  test "should update pr" do
    put :update, :id => @pr.to_param, :pr => @pr.attributes
    assert_redirected_to pr_path(assigns(:pr))
  end

  test "should destroy pr" do
    assert_difference('Pr.count', -1) do
      delete :destroy, :id => @pr.to_param
    end

    assert_redirected_to prs_path
  end
end
