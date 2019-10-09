class Review < ApplicationRecord
  belongs_to :item

  validates_presence_of :title,
                        :content,
                        :rating

  validates_numericality_of :rating,  only_integer: true,
                                      less_than_or_equal_to: 5,
                                      greater_than_or_equal_to: 1
end
