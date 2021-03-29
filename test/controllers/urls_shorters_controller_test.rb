require "test_helper"

class UrlsShortersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @urls_shorter = urls_shorters(:one)
  end

  test "should get index" do
    get urls_shorters_url
    assert_response :success
  end

  test "should get new" do
    get new_urls_shorter_url
    assert_response :success
  end

  test "should create urls_shorter" do
    assert_difference('UrlsShorter.count') do
      post urls_shorters_url, params: { urls_shorter: {  } }
    end

    assert_redirected_to urls_shorter_url(UrlsShorter.last)
  end

  test "should show urls_shorter" do
    get urls_shorter_url(@urls_shorter)
    assert_response :success
  end

  test "should get edit" do
    get edit_urls_shorter_url(@urls_shorter)
    assert_response :success
  end

  test "should update urls_shorter" do
    patch urls_shorter_url(@urls_shorter), params: { urls_shorter: {  } }
    assert_redirected_to urls_shorter_url(@urls_shorter)
  end

  test "should destroy urls_shorter" do
    assert_difference('UrlsShorter.count', -1) do
      delete urls_shorter_url(@urls_shorter)
    end

    assert_redirected_to urls_shorters_url
  end
end
