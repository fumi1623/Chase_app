class ChaptersController < ApplicationController

  def create
    learning = Learning.find(params[:learning_id])
    chapter = current_user.chapters.new(chapter_params)
    chapter.learning_id = learning.id
    chapter.save
    redirect_to learning_path(learning)
  end

  def show
    @chapter = Chapter.find(params[:id])
  end

  private

  def chapter_params
    params.require(:chapter).permit(:title, :chapter_text, :video)
  end

end
