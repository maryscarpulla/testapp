class TastingNoteTag < ApplicationRecord

  has_one :wine_tag_pair, :foreign_key => "tag_id", :dependent => :destroy
  validates :tasting_note_name, :uniqueness => true
  
end
