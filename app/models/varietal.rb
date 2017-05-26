class Varietal < ApplicationRecord
  has_many :wines, :class_name => "Mycellarwine", :dependent => :nullify
end
