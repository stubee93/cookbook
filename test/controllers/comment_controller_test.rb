require 'test_helper'

class CommentControllerTest < ActionController::TestCase
  setup do
    @recipe = recipes(:one)
    @comment = comments(:one)
  end

  test "comment should not be nil" do
    c = Comment.new
    c.user_id = 1
    c.recipe_id = 2

    assert c.save ,"Cannot save without content"
  end

end
