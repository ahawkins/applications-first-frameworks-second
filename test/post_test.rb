require_relative 'test_helper'

class PostTest < MiniTest::Unit::TestCase
  def test_can_be_initialized_with_title_and_text
    post = Post.new({
      title: 'foo',
      text: 'bar'
    })

    assert_equal 'foo', post.title
    assert_equal 'bar', post.bar
  end
end
