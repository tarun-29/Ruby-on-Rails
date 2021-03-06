require 'test_helper'

class CreateCategoriesTest < ActionDispatch::IntegrationTest

  setup do
    @user = User.create(username: "johndoe", email: "johndoe@example.com",
                              password: "password", admin: true)
  end

  test "get new category form and create category" do
    sign_in_as(@user, "password")
    get "/categories/new"
    assert_response :success
    assert_difference 'Category.count', 1 do
      post categories_path, params: { category: { name: "Sports"} }
      assert_response :redirect
    end
    follow_redirect!
    assert_response :success
    assert_match "Sports", response.body
  end

  test "invlid category submission results in fail" do
    sign_in_as(@user, "password")
    get "/categories/new"
    assert_response :success
    assert_no_difference 'Category.count' do
      post categories_path, params: { category: { name: " "} }
    end
    assert_match "errors", response.body
    assert_select 'h2.panel-title'
    assert_select 'div.panel-body'
  end
end
