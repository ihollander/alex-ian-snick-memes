class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.belongs_to :show, foreign_key: true
      t.string :species, default: "Human"
      t.string :gender
      t.boolean :memeable, default: true

      t.timestamps
    end
  end
end
