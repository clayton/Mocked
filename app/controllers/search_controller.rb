class SearchController < ApplicationController
  def index
  end

  def go
    if params[:query]
      begin
        @results = Rubytter.new.search(params[:query])
      rescue Exception => e
        flash[:notice] = "FAIL WHALE: #{e.message}"
        render "index" and return
      end
      flash[:notice] = "Your search returned #{@results.count} results"
      render "index"
    else
      flash[:notice] = "You must specify a search query!"
      render "index"
    end
  end
end
