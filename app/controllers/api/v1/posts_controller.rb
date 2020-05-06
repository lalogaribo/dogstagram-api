class Api::V1::PostsController < ApplicationController
  before_action :find_post, only: [:update, :show]

  def index
    if params[:dog_id]
      dog = Dog.find(params[:dog_id])
      render json: dog.posts
    else
      posts = Post.all
      render json: posts
    end
  end

  def show
    #
    render json: @post
  end

  def create
    dog = Dog.find(params[:dog_id])
    post = dog.posts.build(post_params)
    if post.valid?
      post.save
      render json: post
    else
      render json: {errors: post.errors.full_messages}
    end
  end

  def update
    if @post.update(post_params)
      render json: serialized_response(@post)
    else
      render json: {errors: @post.errors.full_messages}
    end
  end

  def destroy
    cookies[:dog].delete
  end


  private

  def post_params
    params.require(:post).permit(:likes, :image_url, :caption)
  end

  def find_post
    @post = Post.find(params[:id])
  end

  def serialized_response(post, options = "")
    PostSerializer.new(post, options).serialized_json
  end
end
