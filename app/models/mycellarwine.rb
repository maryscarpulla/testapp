class Mycellarwine < ApplicationRecord

  mount_uploader :image_id, ImageIdUploader


  has_many :reviews, :foreign_key => "wine_id", :dependent => :destroy
  has_many :suggested_wines, :foreign_key => "wine_id", :dependent => :destroy
  has_many :wine_tag_pairs, :foreign_key => "tag_id", :dependent => :destroy
  belongs_to :varietal, :class_name => "Varietal", :foreign_key =>"varietal_id"
  belongs_to :user
  validates :year, :length => { :minimum => 4, :maximum => 4 }
  validates :year, :presence => true
  validates :winery, :presence => true
  validates :wine_name, :presence => true
  validates :wine_name, :uniqueness => { :scope => [:user_id, :year, :winery] }
  validates :varietal_id, :presence => true
  validates :price, :numericality => { :message => "should be a  number only. Do not include currency symbols" }, :presence => { :message => "Please enter a price" }
end
