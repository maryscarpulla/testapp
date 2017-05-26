class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :stars
      t.string :review_full_text
      t.integer :user_id
      t.integer :wine_id

      t.timestamps

    end
  end
end
