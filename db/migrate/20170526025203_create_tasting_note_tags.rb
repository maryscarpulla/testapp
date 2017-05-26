class CreateTastingNoteTags < ActiveRecord::Migration
  def change
    create_table :tasting_note_tags do |t|
      t.string :tasting_note_name

      t.timestamps

    end
  end
end
