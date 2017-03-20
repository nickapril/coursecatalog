class ResultController < ApplicationController
  def index
    if !params[:subject].blank?
      @lessons = Subject.find(params[:subject]).lessons
      @lessons = @lessons.search(params[:search]).order(:name)
    else 
      @lessons = Lesson.search(params[:search]).order(:name)
    end

    @subjects = Subject.all.order(:name)

  end
end
