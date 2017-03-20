class ResultController < ApplicationController
  
  def index
  	@subjects = Subject.all.order(:name)

  	if (name = params[:search].presence) || (subject = params[:subject].presence)
  		@subjects = lesson_url.search(name: name, subject: subject)
  	else
  		@subjects = Subject.all
  	end
  end

  # def index
  #   if !params[:subject].blank?
  #     @lessons = Subject.find(params[:subject]).lessons
  #     @lessons = @lessons.search(params[:search]).order(:name)
  #   else 
  #     @lessons = Lesson.search(params[:search]).order(:name)
  #   end

  #   @subjects = Subject.all.order(:name)

  # end
end
