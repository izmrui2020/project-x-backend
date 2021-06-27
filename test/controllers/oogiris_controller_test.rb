require "test_helper"

class OogirisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @oogiri = oogiris(:one)
  end

  test "should get index" do
    get oogiris_url, as: :json
    assert_response :success
  end

  test "should create oogiri" do
    assert_difference('Oogiri.count') do
      post oogiris_url, params: { oogiri: { description: @oogiri.description, file_url: @oogiri.file_url, image_url: @oogiri.image_url, oogiri: @oogiri.oogiri, title: @oogiri.title } }, as: :json
    end

    assert_response 201
  end

  test "should show oogiri" do
    get oogiri_url(@oogiri), as: :json
    assert_response :success
  end

  test "should update oogiri" do
    patch oogiri_url(@oogiri), params: { oogiri: { description: @oogiri.description, file_url: @oogiri.file_url, image_url: @oogiri.image_url, oogiri: @oogiri.oogiri, title: @oogiri.title } }, as: :json
    assert_response 200
  end

  test "should destroy oogiri" do
    assert_difference('Oogiri.count', -1) do
      delete oogiri_url(@oogiri), as: :json
    end

    assert_response 204
  end
end
