class ShowsController < ApplicationController
  before_action :find_show, only: %i[show]
  
  def new

  end

  def search_api
    flash[:api_result] = Show.search_title(params[:search])
    redirect_to new_show_path
  end

  def create
    @show = Show.create(show_params)
    redirect_to @show
  end

  def index
    @shows = Show.all
  end

  def show
  end

private

  def show_params
    params.require(:show).permit(:name, :year_created)
  end

  def find_show
    @show = Show.find_by(id: params[:id])
  end

end
