class CreateWalls < ActiveRecord::Migration[6.0]
  def change
    create_table :walls do |t|
      t.string :name
      t.references :city, null: false, foreign_key: true
      t.string :area
      t.string :description
      t.string :weekday_opening
      t.string :weekday_closing
      t.string :weekend_opening
      t.string :weekend_closing
      t.string :website_url
      t.string :image_url
      t.boolean :bouldering_only
      t.string :address_line_1
      t.string :address_line_2
      t.string :address_line_3
      t.string :postcode

      t.timestamps
    end
  end
end
