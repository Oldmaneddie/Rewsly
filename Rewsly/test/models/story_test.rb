require 'test_helper'

class StoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @story = Story.new(title: "Example User", link: "user@example.com")
  end

  test "should be valid" do
    assert @story.valid?
  end
  
  test "title should be present" do
    @story.title = "   "
    assert_not  @story.valid?   
  end
  
  
end