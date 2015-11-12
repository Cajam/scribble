class CommentsController < ApplicationController

  def new do
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def index
    @comment = Comment.all
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    redirect_to post_path(@post)
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end

end
