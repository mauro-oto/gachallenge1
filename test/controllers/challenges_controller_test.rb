require 'test_helper'

class ChallengesControllerTest < ActionController::TestCase
  setup do
    @challenge = challenges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:challenges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create challenge" do
    assert_difference('Challenge.count') do
      post :create, challenge: { body: @challenge.body }
    end

    assert_redirected_to challenge_path(assigns(:challenge))
  end

  test "should show challenge" do
    get :show, id: @challenge
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @challenge
    assert_response :success
  end

  test "should update challenge" do
    patch :update, id: @challenge, challenge: { body: @challenge.body }
    assert_redirected_to challenge_path(assigns(:challenge))
  end

  test "should destroy challenge" do
    assert_difference('Challenge.count', -1) do
      delete :destroy, id: @challenge
    end

    assert_redirected_to challenges_path
  end
end
