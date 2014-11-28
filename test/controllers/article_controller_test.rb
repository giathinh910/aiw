require 'test_helper'

class ArticleControllerTest < ActionController::TestCase
  test "should get all" do
    get :all
    assert_response :success
  end

  test "should get detail" do
    get :detail
    assert_response :success
  end

end
