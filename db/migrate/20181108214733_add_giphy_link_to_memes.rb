class AddGiphyLinkToMemes < ActiveRecord::Migration[5.2]
  def change
    add_column :memes, :giphy_link, :string
  end
end
