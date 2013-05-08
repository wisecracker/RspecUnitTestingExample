class Fruit < ActiveRecord::Base
  attr_accessible :name

  belongs_to :stair

  def squishy?
    nil
  end

end
