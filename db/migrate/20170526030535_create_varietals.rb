class CreateVarietals < ActiveRecord::Migration
  def change
    create_table :varietals do |t|
      t.string :varietal_name

      t.timestamps

    end
  end
end
