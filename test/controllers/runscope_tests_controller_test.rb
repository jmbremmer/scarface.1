require 'test_helper'

class RunscopeTestsControllerTest < ActionController::TestCase
  setup do
    @runscope_test = runscope_tests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:runscope_tests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create runscope_test" do
    assert_difference('RunscopeTest.count') do
      post :create, runscope_test: { name: @runscope_test.name, url: @runscope_test.url }
    end

    assert_redirected_to runscope_test_path(assigns(:runscope_test))
  end

  test "should show runscope_test" do
    get :show, id: @runscope_test
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @runscope_test
    assert_response :success
  end

  test "should update runscope_test" do
    patch :update, id: @runscope_test, runscope_test: { name: @runscope_test.name, url: @runscope_test.url }
    assert_redirected_to runscope_test_path(assigns(:runscope_test))
  end

  test "should destroy runscope_test" do
    assert_difference('RunscopeTest.count', -1) do
      delete :destroy, id: @runscope_test
    end

    assert_redirected_to runscope_tests_path
  end
end
