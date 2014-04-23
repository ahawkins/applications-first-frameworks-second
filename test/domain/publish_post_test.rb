require_relative '../test_helper'

class PublishPostTest < MiniTest::Test
  def setup
    Chassis.repo.clear
  end

  def test_publishes_a_post
    assert_empty PostRepo

    form = PublishPostForm.new({
      title: 'Rails Conf!',
      text: 'DHH says...'
    })

    use_case = PublishPost.new form
    use_case.execute

    refute_empty PostRepo
    post = PostRepo.first

    assert_equal form.title, post.title
    assert_equal form.text, post.text
  end

  def test_does_not_allow_bad_data
    assert_raises ValidationError do
      form = PublishPostForm.new
      PublishPost.new(form).execute
    end
  end
end
