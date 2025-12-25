require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "should not save post without title" do
    post = Post.new
    assert_not post.save, "Saved the post without a title"
  end

  test "should not save post without body" do
    post = Post.new(title: "Valid Title")
    assert_not post.save, "Saved the post without a body"
  end

  test "should save valid post" do
    post = Post.new(title: "Valid Title", body: "Valid Body Content")
    assert post.save, "Could not save valid post"
  end
end
