class Review < ApplicationRecord
  belongs_to :wine, :class_name => "Mycellarwine"
  belongs_to :user
  validates :wine_id, :presence => true
  validates :wine_id, :uniqueness => { :scope => [:user_id] }
  validates :stars, :presence => true

end
