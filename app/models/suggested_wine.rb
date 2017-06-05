class SuggestedWine < ApplicationRecord
  belongs_to :wine, :class_name => "Mycellarwine", :foreign_key => "wine_id"
belongs_to :user_id_to, :class_name => "User"
belongs_to :user_id_from, :class_name => "User"
validates :wine_id, :presence => true
validates :wine_id, :uniqueness => { :scope => [:user_id_to, :user_id_from], :message => "You've already shared this wine" }
validates :user_id_to, :presence => true
validates :user_id_from, :presence => true
end
