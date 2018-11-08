class NinetiesKid < ApplicationRecord
  has_many :memes
  has_many :shows, through: :memes

  validates :created_year, numericality: { 
                                    greater_than: 1982,
                                    less_than: 1996
                                  }

  def age
    Date.today.year - self.created_year
  end

  def yourl
    self.memes.sample.image_link if self.memes.any?
  end
end
