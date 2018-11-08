class CreateMemes < ActiveRecord::Migration[5.2]
  def change
    create_table :memes do |t|
      t.string :image
      t.belongs_to :show, foreign_key: true
      t.belongs_to :nineties_kid, foreign_key: true

      t.timestamps
    end
  end
end
