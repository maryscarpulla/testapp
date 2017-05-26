class CreateWineTagPairs < ActiveRecord::Migration
  def change
    create_table :wine_tag_pairs do |t|
      t.integer :wine_id
      t.integer :tag_id

      t.timestamps

    end
  end
end
