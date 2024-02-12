class Tagging < ApplicationRecord
  # tags = active.taggings.collect{|tagging| tagging.tag}
  belongs_to :tag
  belongs_to :active
end
