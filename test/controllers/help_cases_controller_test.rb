require 'test_helper'

class HelpCasesControllerTest < ActionController::TestCase
  setup do
    @help_case = help_cases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:help_cases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create help_case" do
    assert_difference('HelpCase.count') do
      post :create, help_case: { description: @help_case.description, title: @help_case.title, user_id: @help_case.user_id }
    end

    assert_redirected_to help_case_path(assigns(:help_case))
  end

  test "should show help_case" do
    get :show, id: @help_case
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @help_case
    assert_response :success
  end

  test "should update help_case" do
    patch :update, id: @help_case, help_case: { description: @help_case.description, title: @help_case.title, user_id: @help_case.user_id }
    assert_redirected_to help_case_path(assigns(:help_case))
  end

  test "should destroy help_case" do
    assert_difference('HelpCase.count', -1) do
      delete :destroy, id: @help_case
    end

    assert_redirected_to help_cases_path
  end
end
