class SearchController < ApplicationController

  def index
    if !params[:subject].blank? && params[:search].blank?
      @lessons = Subject.find(params[:subject]).lessons
    elsif !params[:search].blank? && params[:subject].blank?
      @lessons = @lessons.search(params[:search]).order(:name)
    else 
      @lessons = Lesson.search(params[:search]).order(:name)
    end

    @subjects = Subject.all.order(:name)
  end

  # GET /lessons/1
  # GET /lessons/1.json
  def show
    # @subjects = Subject.all
    # @search = Search.new
  end

  def search
  end

  # GET /lessons/new
  def new
  end

end

