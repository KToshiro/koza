require 'test_helper'

class PcInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pc_info = pc_infos(:one)
  end

  test "should get index" do
    get pc_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_pc_info_url
    assert_response :success
  end

  test "should create pc_info" do
    assert_difference('PcInfo.count') do
      post pc_infos_url, params: { pc_info: { description: @pc_info.description, picture: @pc_info.picture, title: @pc_info.title, url: @pc_info.url } }
    end

    assert_redirected_to pc_info_url(PcInfo.last)
  end

  test "should show pc_info" do
    get pc_info_url(@pc_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_pc_info_url(@pc_info)
    assert_response :success
  end

  test "should update pc_info" do
    patch pc_info_url(@pc_info), params: { pc_info: { description: @pc_info.description, picture: @pc_info.picture, title: @pc_info.title, url: @pc_info.url } }
    assert_redirected_to pc_info_url(@pc_info)
  end

  test "should destroy pc_info" do
    assert_difference('PcInfo.count', -1) do
      delete pc_info_url(@pc_info)
    end

    assert_redirected_to pc_infos_url
  end
end
