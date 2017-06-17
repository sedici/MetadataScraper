require 'test_helper'

class SitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sitio = sitios(:one)
  end

  test "should get index" do
    get sitios_url
    assert_response :success
  end

  test "should get new" do
    get new_sitio_url
    assert_response :success
  end

  test "should create sitio" do
    assert_difference('Site.count') do
      post sitios_url, params: { sitio: { nombre: @sitio.nombre, valores: @sitio.valores } }
    end

    assert_redirected_to sitio_url(Site.last)
  end

  test "should show sitio" do
    get sitio_url(@sitio)
    assert_response :success
  end

  test "should get edit" do
    get edit_sitio_url(@sitio)
    assert_response :success
  end

  test "should update sitio" do
    patch sitio_url(@sitio), params: { sitio: { nombre: @sitio.nombre, valores: @sitio.valores } }
    assert_redirected_to sitio_url(@sitio)
  end

  test "should destroy sitio" do
    assert_difference('Site.count', -1) do
      delete sitio_url(@sitio)
    end

    assert_redirected_to sitios_url
  end
end
