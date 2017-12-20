class CommentsController < ApplicationController
  def create
    comment = Comment.new(comment_params)

    if comment.save
      redirect_to renter_path(comment.renter_id)
    end
  end

  private

    def comment_params
      params.require(:comment).permit(:title, :body, :renter_id)
    end
end
