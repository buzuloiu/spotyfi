require 'test_helper'

class MicropostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @user = users(:paul)
    @micropost = @user.microposts.build(content: "Words Words Words")
  end


  test "should be valid" do
    assert @micropost.valid?
  end

  test "user id should be present" do
    @micropost.user_id = nil
    assert_not @micropost.valid?
  end

  test "content should be present" do
    @micropost.content = "   "
    assert_not @micropost.valid?
  end

  test "content should be shorter than 140 characters" do
    @micropost.content = "s"*141
    assert_not @micropost.valid?
  end

  test "most recent should be first" do
    assert_equal microposts(:most_recent), Micropost.first
  end
end
