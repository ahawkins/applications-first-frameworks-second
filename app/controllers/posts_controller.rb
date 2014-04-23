class PostsController < ApplicationController
  def new
    @form = PublishPostForm.new
  end

  def create
    form = PublishPostForm.new params[:post]
    use_case = PublishPost.new form
    post = use_case.execute

    redirect_to post_path(id: post.id)
  end

  def show

  end
end
