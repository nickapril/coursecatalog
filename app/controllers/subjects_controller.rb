class SubjectsController < ApplicationController

  def new
  	@subject = Subject.new
  end

  def index
    @subjects = Subject.all
  end

  def show
  end

end
