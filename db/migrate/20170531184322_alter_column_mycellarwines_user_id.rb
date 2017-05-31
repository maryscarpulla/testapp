class AlterColumnMycellarwinesUserId < ActiveRecord::Migration[5.0]
  def self.up
    change_table :mycellarwines do |t|
      t.change :image_id, :string
    end
    def self.down
      change_table :mycellarwines do |t|
        t.change :image_id, :integer
      end
    end
  end
end
