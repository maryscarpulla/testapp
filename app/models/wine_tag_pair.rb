class WineTagPair < ApplicationRecord
  belongs_to :tag, :class_name => "Mycellarwine"
belongs_to :wine, :class_name => "TastingNoteTag", :foreign_key => "tag_id"
end
