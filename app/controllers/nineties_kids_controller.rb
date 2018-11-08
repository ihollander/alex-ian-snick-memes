class NinetiesKidsController < ApplicationController
  before_action :find_kid, only: [:show]

  def index
    @kids = NinetiesKid.all
  end

  def show
    @shows = Show.all
  end

  def new
    @kid = NinetiesKid.new
  end

  def create
    @kid = NinetiesKid.create(kid_params)
    if @kid.valid?
      redirect_to @kid
    else
      flash[:errors] = @kid.errors.full_messages
      redirect_to new_nineties_kid_path
    end
  end

private

  def kid_params
    params.require(:nineties_kid).permit(:name, :created_year)
  end

  def find_kid
    @kid = NinetiesKid.find_by(id: params[:id])
  end

end
