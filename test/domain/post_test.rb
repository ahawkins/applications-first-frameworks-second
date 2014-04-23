require_relative '../test_helper'

class PostTest < MiniTest::Test
  def test_can_be_initialized_with_title_and_text
    post = Post.new({
      title: 'foo',
      text: 'bar'
    })

    assert_equal 'foo', post.title
    assert_equal 'bar', post.text
  end
end
