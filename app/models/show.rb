class Show < ApplicationRecord
  extend TvApiCommunicator
  has_many :characters
  has_many :memes

  def age
    Date.today.year - self.year_created
  end

  def theirl
    self.memes.sample.image_link
  end

  def self.new_from_api(api_hash)
    self.new(name: api_hash["name"], year_created: api_hash["year_created"])
  end
end
