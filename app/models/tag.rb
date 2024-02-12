class Tag < ApplicationRecord
  has_many :taggings
  has_many :actives, through: :taggings
  def to_s
    name
  end
end