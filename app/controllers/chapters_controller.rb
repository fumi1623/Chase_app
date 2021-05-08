class ChaptersController < ApplicationController

  def new
    @chapter = Chapter.new
  end

  def create
    @learning = Learning.find(params[:learning_id])
    @chapter = Chapter.new(chapter_params)
    @chapter.save
    redirect_to @chapter
  end

  def show
    @chapter = Chapter.find(params[:id])
  end

  private

  def chapter_params
    params.require(:chapter).permit(:title, :chapter_text, :video)
  end

end
