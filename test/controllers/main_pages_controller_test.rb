require 'test_helper'

class MainPagesControllerTest < ActionController::TestCase
  setup do
    @main_page = main_pages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:main_pages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create main_page" do
    assert_difference('MainPage.count') do
      post :create, main_page: {  }
    end

    assert_redirected_to main_page_path(assigns(:main_page))
  end

  test "should show main_page" do
    get :show, id: @main_page
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @main_page
    assert_response :success
  end

  test "should update main_page" do
    patch :update, id: @main_page, main_page: {  }
    assert_redirected_to main_page_path(assigns(:main_page))
  end

  test "should destroy main_page" do
    assert_difference('MainPage.count', -1) do
      delete :destroy, id: @main_page
    end

    assert_redirected_to main_pages_path
  end
end
