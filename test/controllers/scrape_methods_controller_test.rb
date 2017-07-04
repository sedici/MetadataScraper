require 'test_helper'

class ScrapeMethodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @scrape_method = scrape_methods(:one)
  end

  test "should get index" do
    get scrape_methods_url
    assert_response :success
  end

  test "should get new" do
    get new_scrape_method_url
    assert_response :success
  end

  test "should create scrape_method" do
    assert_difference('ScrapeMethod.count') do
      post scrape_methods_url, params: { scrape_method: { field_id: @scrape_method.field_id, method: @scrape_method.method } }
    end

    assert_redirected_to scrape_method_url(ScrapeMethod.last)
  end

  test "should show scrape_method" do
    get scrape_method_url(@scrape_method)
    assert_response :success
  end

  test "should get edit" do
    get edit_scrape_method_url(@scrape_method)
    assert_response :success
  end

  test "should update scrape_method" do
    patch scrape_method_url(@scrape_method), params: { scrape_method: { field_id: @scrape_method.field_id, method: @scrape_method.method } }
    assert_redirected_to scrape_method_url(@scrape_method)
  end

  test "should destroy scrape_method" do
    assert_difference('ScrapeMethod.count', -1) do
      delete scrape_method_url(@scrape_method)
    end

    assert_redirected_to scrape_methods_url
  end
end
