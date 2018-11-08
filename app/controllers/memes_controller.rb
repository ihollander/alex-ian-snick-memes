class MemesController < ApplicationController
  
  def new
    @meme = Meme.new(nineties_kid_id: params[:nineties_kid_id])
    @shows = Show.all
  end

  def new_from_giphy
    @kid = NinetiesKid.find_by(id: params[:nineties_kid_id])
    @meme = Meme.new(nineties_kid_id: params[:nineties_kid_id])
    @shows = Show.all
  end

  def create
    @meme = Meme.create(meme_params)
    redirect_to @meme.nineties_kid
  end

  def search_giphy
    giphy_ids = Meme.search_title(params[:search][:search], params[:search][:limit])
    meme_hashes = giphy_ids.map do |id|
      {
        giphy_link: Meme.image_from_giphy(id),
        show_id: Show.find_by(name: params[:search][:search]).id,
        kid_id: params[:id]
      }
    end
    flash[:meme_hashes] = meme_hashes
    redirect_to nineties_kid_new_meme_from_giphy_path(params[:id])
  end

private 

  def meme_params
    params.require(:meme).permit(:show_id, :image, :nineties_kid_id, :giphy_link)
  end

end
