class SearchController < ApplicationController
  def index
  end

  def go
    if params[:query]
      begin
        @result = Octopi::User.find(params[:query])
      rescue Exception => e
        flash[:notice] = "OCTOFAIL: #{e.message}"
      end
      if @result
        flash[:notice] = "We found a user!"
      else
        flash[:notice] = "Hrm, nobody with that name exists..."
      end
    else
      flash[:notice] = "You must specify a search query!"
    end
      render "index"
  end
end
