class Fruit < ActiveRecord::Base
  attr_accessible :name

  belongs_to :stair

  validates :name, :presence => true

  def squishy?
    nil
  end

end
