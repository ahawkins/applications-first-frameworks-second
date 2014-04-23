require_relative 'test_helper'

class PublishPostFormTest < MiniTest::Unit::TestCase
  def test_requires_a_title
    form = PublishPostForm.new title: nil

    error = assert_raises ValidationError do
      form.validate
    end

    assert_equal :title_blank, error.msg
  end

  def test_requires_text
    form = PublishPostForm.new text: nil

    error = assert_raises ValidationError do
      form.validate
    end

    assert_equal :text_blank, error.msg
  end
end
