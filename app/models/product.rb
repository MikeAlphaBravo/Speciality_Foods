class Product < ApplicationRecord
  has_many :reviews
  validates :name, :cost, :origin, :presence => true

  scope :by_origin, -> (origin_parameter) { where(origin: origin_parameter) }
  scope :recent, -> { order("created_at DESC").limit(3) }
  # scope :status, -> (status) { where status: status }
  # scope :location, -> (name) { where("name like ?", "#{name}%")}
  scope :index, -> (page) { order("name ASC").paginate(:page => page, :per_page => 10) }
  # scope :only_names, -> (name_parameter) { where("name like ?", "%#{name_parameter}%")}
  scope :search, -> (search) { where("name like ? OR cost like ? OR origin like ?", "%#{search.downcase}%", "%#{search.downcase}%", "%#{search.downcase}%")}

  scope :most_reviews, -> {(
    select("products.id, products.name, count(reviews.id) as reviews_count")
    .joins(:reviews)
    .group("products.id")
    .order("reviews_count DESC")
    .limit(1).first
  )}

  before_save :downcase_fields

   def downcase_fields
      self.name.downcase!
   end
end
