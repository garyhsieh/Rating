require 'test_helper'

class ParticipantRatingsControllerTest < ActionController::TestCase
  setup do
    @participant_rating = participant_ratings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:participant_ratings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create participant_rating" do
    assert_difference('ParticipantRating.count') do
      post :create, participant_rating: {  }
    end

    assert_redirected_to participant_rating_path(assigns(:participant_rating))
  end

  test "should show participant_rating" do
    get :show, id: @participant_rating
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @participant_rating
    assert_response :success
  end

  test "should update participant_rating" do
    put :update, id: @participant_rating, participant_rating: {  }
    assert_redirected_to participant_rating_path(assigns(:participant_rating))
  end

  test "should destroy participant_rating" do
    assert_difference('ParticipantRating.count', -1) do
      delete :destroy, id: @participant_rating
    end

    assert_redirected_to participant_ratings_path
  end
end
