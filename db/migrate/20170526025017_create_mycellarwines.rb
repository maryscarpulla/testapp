class CreateMycellarwines < ActiveRecord::Migration
  def change
    create_table :mycellarwines do |t|
      t.string :wine_name
      t.string :year
      t.integer :price
      t.integer :varietal_id
      t.string :winery
      t.boolean :bucket_list_wine
      t.integer :image_id

      t.timestamps

    end
  end
end
