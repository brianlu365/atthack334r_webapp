class User < ApplicationRecord
  has_and_belongs_to_many :recyclable_item

  def points
    recyclable_item.map(&:points).reduce(:+)
  end

  def points_percent
    points % 100
  end

  def weights
    recyclable_item.map(&:weight).reduce(:+)
  end
end
