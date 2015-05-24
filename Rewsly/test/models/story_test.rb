require 'test_helper'

class StoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @story = Story.new(title: "Example User", link: "user@example.com",upvotes: 2,category:"example")
  end

  test "should be valid" do
    assert @story.valid?
  end
  
  test "title should be present" do
    @story.title = "   "
    assert_not  @story.valid?   
  end
  
  test "link should be present" do
    @story.link = " "
    assert_not @story.valid?
  end
  
  test "upvotes should be present" do
    @story.upvotes = " "
    assert_not @story.valid?
  end

  test "category should be present" do
    @story.category = " "
    assert_not @story.valid?
  end
  
  
end