class PublishPost
  include Concord.new(:form)

  def execute
    form.validate

    Post.create do |post|
      post.title = form.title
      post.text = form.text
    end
  end
end
