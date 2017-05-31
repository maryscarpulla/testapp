class Varietal < ApplicationRecord
  has_many :mycellarwines, :class_name => "Mycellarwine", :dependent => :nullify
end
