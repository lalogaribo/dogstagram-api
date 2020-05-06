class Api::V1::CommentsController < ApplicationController

  def create
    post = Post.find(params[:post_id])
    comment = post.comments.build(comment_params)
    if comment.valid?
      comment.save
      render json: comment
    else
      render json: {errors: comment.errors.full_messages}
    end
  end

  private

  def comment_params
    params.require('comment').permit(:content)
  end

end
