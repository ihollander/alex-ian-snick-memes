class Meme < ApplicationRecord
  extend GiphyApiCommunicator
  
  belongs_to :show
  belongs_to :nineties_kid

  mount_uploader :image, MemeUploader

  def self.image_from_giphy(id)
    "https://i.giphy.com/media/#{id}/giphy.webp"
  end

  def image_link
    self.giphy_link && self.giphy_link.length > 0 ? self.giphy_link : self.image.url
  end
end
