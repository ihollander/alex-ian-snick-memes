class CreateNinetiesKids < ActiveRecord::Migration[5.2]
  def change
    create_table :nineties_kids do |t|
      t.integer :created_year
      t.string :name

      t.timestamps
    end
  end
end
