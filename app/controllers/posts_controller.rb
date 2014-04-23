class PostsController < ApplicationController
  def new
    @form = PublishPostForm.new
  end
end
