class PostsController < ApplicationController
  def new
    @form = Web::PublishPostForm.new
  end

  def create
    @form = Web::PublishPostForm.new params[:web_publish_post_form]

    use_case = PublishPost.new @form
    post = use_case.execute

    redirect_to post_path(id: post.id)
  rescue ValidationError
    @error = true
    render :new
  end

  def show
    @post = PostRepo.find params[:id].to_i
  end
end
