require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  include Devise::TestHelpers
  setup do
    @last_recipes = recipes(:one)
    @level = levels(:one)
  end

  test "should show recent recipe" do
   get :home
    assert_response :success
    assert_select "h1", "Legújabb receptek"
  end
end