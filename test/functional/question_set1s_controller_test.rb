require 'test_helper'

class QuestionSet1sControllerTest < ActionController::TestCase
  setup do
    @question_set1 = question_set1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:question_set1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create question_set1" do
    assert_difference('QuestionSet1.count') do
      post :create, question_set1: {  }
    end

    assert_redirected_to question_set1_path(assigns(:question_set1))
  end

  test "should show question_set1" do
    get :show, id: @question_set1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @question_set1
    assert_response :success
  end

  test "should update question_set1" do
    put :update, id: @question_set1, question_set1: {  }
    assert_redirected_to question_set1_path(assigns(:question_set1))
  end

  test "should destroy question_set1" do
    assert_difference('QuestionSet1.count', -1) do
      delete :destroy, id: @question_set1
    end

    assert_redirected_to question_set1s_path
  end
end
