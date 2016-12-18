require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  # test "should get root" do
  #   get FILL_IN
  #   assert_response FILL_IN
  # end

  def setup
    @base_title = "The Programing Skill Up KOZA"
  end

  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get news" do
    get static_pages_news_url
    assert_response :success
    assert_select "title", "News | #{@base_title}"
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end

  test "should get contact" do
    get static_pages_contact_url
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end

end
