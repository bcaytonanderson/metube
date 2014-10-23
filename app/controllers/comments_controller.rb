class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to URI(request.referer).path
    else
      render 'videos/show'
    end
  end

  def update
    @comment = Comment.find(params['id'])
    @comment.update(comment_params)
    @comment.save
  end

  def destroy
    @comment = Comment.find(params['id'])
    @comment.destroy
    render 'videos/show'
  end

private
  
  def comment_params
    params.require(:commentable).permit(:commentable_id, :commentable_type, :content)
  end

end
