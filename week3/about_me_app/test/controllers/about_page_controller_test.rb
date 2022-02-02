require "test_helper"

class AboutPageControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "get root" do
    get root_url
    assert_response :success
  end

  test "get about page" do 
    post about_page_url
    assert_response :success
  end

  test "get about form" do
    get about_form_url
    assert_response :success
  end

  test "get about json" do
    get about_json_url
    assert_response :success
  end

  test "check for form partial" do
    assert File.file?("./app/views/about_page/_form.html.erb")
  end

end
