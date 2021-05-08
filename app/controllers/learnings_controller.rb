class LearningsController < ApplicationController

  def new
    @learning = Learning.new
  end

  def create
    @learning = Learning.new(learning_params)
    @learning.user_id = current_user.id
    if @learning.save
      redirect_to learnings_path
    else
      render :new
    end
  end

  def index
    @learnings = Learning.page(params[:page]).reverse_order
  end

  def show
    @learning = Learning.find(params[:id])
    @learning_comment = LearningComment.new
  end

  def edit
    @learning = Learning.find(params[:id])
  end

  def update
    @learning = Learning.find(params[:id])
    @learning.update(learning_params)
    redirect_to learning_path(@learning)
  end

  def destroy
    @learning = Learning.find(params[:id])
    @learning.destroy
    redirect_to learnings_path
  end

  private

  def learning_params
    params.require(:learning).permit(:learning_name, :learning_detail, :learning_post_date, :learning_image)
  end

end
