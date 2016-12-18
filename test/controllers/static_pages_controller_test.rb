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
    get root_path
    assert_response :success
    assert_select "title", "The Programing Skill Up KOZA"
  end

  test "should get news" do
    get news_path
    assert_response :success
    assert_select "title", "News | The Programing Skill Up KOZA"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | The Programing Skill Up KOZA"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | The Programing Skill Up KOZA"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | The Programing Skill Up KOZA"
  end

end
