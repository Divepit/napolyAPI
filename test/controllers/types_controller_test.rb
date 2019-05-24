require 'test_helper'

class TypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @type = types(:one)
  end

  test "should get index" do
    get types_url, as: :json
    assert_response :success
  end

  test "should create type" do
    assert_difference('Type.count') do
      post types_url, params: { type: { typeName: @type.typeName } }, as: :json
    end

    assert_response 201
  end

  test "should show type" do
    get type_url(@type), as: :json
    assert_response :success
  end

  test "should update type" do
    patch type_url(@type), params: { type: { typeName: @type.typeName } }, as: :json
    assert_response 200
  end

  test "should destroy type" do
    assert_difference('Type.count', -1) do
      delete type_url(@type), as: :json
    end

    assert_response 204
  end
end
