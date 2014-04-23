require_relative '../test_helper'

class PublishPostFormTest < MiniTest::Test
  def test_requires_a_title
    form = PublishPostForm.new title: nil, text: 'Foo'

    error = assert_raises ValidationError do
      form.validate
    end

    assert_equal 'title_blank', error.message
  end

  def test_requires_text
    form = PublishPostForm.new text: nil, title: 'Foo'

    error = assert_raises ValidationError do
      form.validate
    end

    assert_equal 'text_blank', error.message
  end
end
