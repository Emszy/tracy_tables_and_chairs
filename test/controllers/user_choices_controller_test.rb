require 'test_helper'

class UserChoicesControllerTest < ActionController::TestCase
  setup do
    @user_choice = user_choices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_choices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_choice" do
    assert_difference('UserChoice.count') do
      post :create, user_choice: { chair_quantity: @user_choice.chair_quantity, city: @user_choice.city, price: @user_choice.price, table_quantity: @user_choice.table_quantity }
    end

    assert_redirected_to user_choice_path(assigns(:user_choice))
  end

  test "should show user_choice" do
    get :show, id: @user_choice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_choice
    assert_response :success
  end

  test "should update user_choice" do
    patch :update, id: @user_choice, user_choice: { chair_quantity: @user_choice.chair_quantity, city: @user_choice.city, price: @user_choice.price, table_quantity: @user_choice.table_quantity }
    assert_redirected_to user_choice_path(assigns(:user_choice))
  end

  test "should destroy user_choice" do
    assert_difference('UserChoice.count', -1) do
      delete :destroy, id: @user_choice
    end

    assert_redirected_to user_choices_path
  end
end
