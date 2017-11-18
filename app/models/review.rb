class Review < ActiveRecord::Base
  belongs_to :product
  validates :author, :product_id, :presence => true
  validates :content, length: {minimum: 50, maximum: 250}, allow_blank: true
  validates :rating, :inclusion => 1..5
end
