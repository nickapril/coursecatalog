class SearchController < ApplicationController

  def index
    @subjects = Subject.all.order(:name)

    if (name = params[:search].presence) || (subject = params[:subject].presence)
      @subjects = Subject.search(name: name, subject: subject)
    else
      @subjects = Subject.all
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
