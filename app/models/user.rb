class User < ApplicationRecord
  has_and_belongs_to_many :recyclable_item

  def points
    recyclable_item.map(&:points).reduce(:+)
  end
end
