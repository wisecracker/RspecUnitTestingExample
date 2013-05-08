class Stair < ActiveRecord::Base
  # attr_accessible :title, :body

  has_many :fruits
end
