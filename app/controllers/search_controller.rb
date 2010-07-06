class SearchController < ApplicationController
  def index
  end

  def go
    if params[:query]
      @results = Twitter::Search.new(params[:query])
      flash[:notice] = "Your search returned #{@results.count} results"
      render "index"
    else
      flash[:notice] = "You must specify a search query!"
      render "index"
    end
  end
end
