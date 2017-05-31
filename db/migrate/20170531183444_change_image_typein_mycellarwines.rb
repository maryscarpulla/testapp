class ChangeImageTypeinMycellarwines < ActiveRecord::Migration[5.0]
  def change

    def self.up

      change_column :Mycellarwines, :image_id, :string
    end

    def self.down
      change_column :Mycellarwines, :image_id, :integer
    end
  end

end
