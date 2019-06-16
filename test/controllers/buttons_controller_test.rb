require 'test_helper'

class ButtonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @button = buttons(:one)
  end

  test "should get index" do
    get buttons_url, as: :json
    assert_response :success
  end

  test "should create button" do
    assert_difference('Button.count') do
      post buttons_url, params: { button: { buttonLabel: @button.buttonLabel, buttonUrl: @button.buttonUrl, subject_id: @button.subject_id } }, as: :json
    end

    assert_response 201
  end

  test "should show button" do
    get button_url(@button), as: :json
    assert_response :success
  end

  test "should update button" do
    patch button_url(@button), params: { button: { buttonLabel: @button.buttonLabel, buttonUrl: @button.buttonUrl, subject_id: @button.subject_id } }, as: :json
    assert_response 200
  end

  test "should destroy button" do
    assert_difference('Button.count', -1) do
      delete button_url(@button), as: :json
    end

    assert_response 204
  end
end
