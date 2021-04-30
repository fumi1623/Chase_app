class LearningCommentsController < ApplicationController

  def create
    learning = Learning.find(params[:learning_id])
    comment = current_user.learning_comments.new(learning_comment_params)
    comment.learning_id = learning.id
    comment.save
    redirect_to learning_path(learning)
  end

  def destroy
    LearningComment.find_by(id: params[:id], learning_id: params[:learning_id]).destroy
    redirect_to learning_path(params[:learning_id])
  end

  private

  def learning_comment_params
    params.require(:learning_comment).permit(:comment)
  end

end
