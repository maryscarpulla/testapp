class CreateSuggestedWines < ActiveRecord::Migration
  def change
    create_table :suggested_wines do |t|
      t.integer :wine_id
      t.integer :user_id_from
      t.integer :user_id_to

      t.timestamps

    end
  end
end
