class SearchController < ApplicationController

  def index

    if logged_in?

      @lessons = Lesson.all
      if !params[:subject].blank? && params[:search].blank?
        @lessons = Subject.find(params[:subject]).lessons
      elsif !params[:search].blank? && params[:subject].blank?
        @lessons = @lessons.search(params[:search]).order(:name)
      elsif !params[:subject].blank? && !params[:search].blank?
        @lessons = Subject.find(params[:subject]).lessons
        @lessons = @lessons.search(params[:search]).order(:name)
      else
        @lessons
      end

      @subjects = Subject.all.order(:name)

      @enrollment = Enrollment.create

      respond_to do |format|
        format.html
        format.js
      end

    else
      redirect_to root_url, notice: 'LOGIN OR SIGNUP TO CONTINUE'
    end

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

