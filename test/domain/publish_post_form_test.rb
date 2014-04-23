require_relative '../test_helper'

class PublishPostFormTest < MiniTest::Test
  def test_nil_titles_are_not_allowed
    form = PublishPostForm.new title: nil, text: 'Foo'

    error = assert_raises ValidationError do
      form.validate
    end

    assert_equal 'title_blank', error.message
  end

  def test_empty_titles_are_not_allowed
    form = PublishPostForm.new title: '', text: 'Foo'

    error = assert_raises ValidationError do
      form.validate
    end

    assert_equal 'title_blank', error.message
  end

  def test_nil_text_is_not_allowed
    form = PublishPostForm.new text: '', title: 'Foo'

    error = assert_raises ValidationError do
      form.validate
    end

    assert_equal 'text_blank', error.message
  end

  def test_empty_text_is_not_allowed
    form = PublishPostForm.new text: '', title: 'Foo'

    error = assert_raises ValidationError do
      form.validate
    end

    assert_equal 'text_blank', error.message
  end
end
