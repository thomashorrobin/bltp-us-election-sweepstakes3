require 'test_helper'

class PredictionsControllerTest < ActionController::TestCase
  setup do
    @prediction = predictions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:predictions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prediction" do
    assert_difference('Prediction.count') do
      post :create, prediction: { clinton_ec_votes: @prediction.clinton_ec_votes, first_name: @prediction.first_name, last_name: @prediction.last_name, lockin_datetime: @prediction.lockin_datetime, trump_ec_votes: @prediction.trump_ec_votes }
    end

    assert_redirected_to prediction_path(assigns(:prediction))
  end

  test "should show prediction" do
    get :show, id: @prediction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prediction
    assert_response :success
  end

  test "should update prediction" do
    patch :update, id: @prediction, prediction: { clinton_ec_votes: @prediction.clinton_ec_votes, first_name: @prediction.first_name, last_name: @prediction.last_name, lockin_datetime: @prediction.lockin_datetime, trump_ec_votes: @prediction.trump_ec_votes }
    assert_redirected_to prediction_path(assigns(:prediction))
  end

  test "should destroy prediction" do
    assert_difference('Prediction.count', -1) do
      delete :destroy, id: @prediction
    end

    assert_redirected_to predictions_path
  end
end
