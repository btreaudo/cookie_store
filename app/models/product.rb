class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :brand

  validates :name, :description, :brand_id, :category_id, :price, :quantity, presence: true
  validates :name, uniqueness: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}

  has_attached_file :image, styles: { large: "300x300>", medium: "100x100>" }, default_url: "/:style_missing.jpg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
