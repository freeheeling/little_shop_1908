class Review < ApplicationRecord
  belongs_to :item

  validates_presence_of :title,
                        :content,
                        :rating

  validates_numericality_of :rating,  only_integer: true,
                                      less_than: 6,
                                      greater_than: 0
end
