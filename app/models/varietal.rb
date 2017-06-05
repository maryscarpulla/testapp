class Varietal < ApplicationRecord
  has_many :mycellarwines, :class_name => "Mycellarwine", :dependent => :nullify

  validates :varietal_name, :uniqueness => {:scope => [:user_id]}

end
