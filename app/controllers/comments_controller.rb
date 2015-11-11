class CommentsController < ApplicationController

  def index
    @comment = Comment.all
  end

  def create
    @comment = Comment.new(comment_params)

    @comment.save
    redirect_to @article
  end

  def show
    @comment = Comment.find(params[:id])
  end

  private
    def comment_params
      params.require(:comment).permit(:title, :text)
    end

end
