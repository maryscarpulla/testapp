class Mycellarwine < ApplicationRecord


  
  has_many :reviews, :foreign_key => "wine_id", :dependent => :destroy
has_many :suggested_wines, :foreign_key => "wine_id", :dependent => :destroy
has_many :wine_tag_pairs, :foreign_key => "tag_id", :dependent => :destroy
belongs_to :varietal
belongs_to :user
validates :year, :length => { :minimum => 4, :maximum => 4 }
validates :year, :presence => true
validates :winery, :presence => true
validates :wine_name, :presence => true
validates :wine_name, :uniqueness => { :scope => [:year, :winery] }
validates :varietal_id, :presence => true
validates :price, :presence => { :message => "Please enter a price" }
end
