class Product < ApplicationRecord
  has_many :line_items
  
  before_destroy :ensure_not_referenced_by_any_line_item

  # validate blank
  validates :title, :description, :image_url, presence: true
  # validate price value >=0.01
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  # validate unique title
  validates :title, uniqueness: true
  # validate image URL - ends with .gif .jpg .png
  validates :image_url, allow_blank: true, format: {
    with:     %r{\.(gif|jpg|png)\Z}i,
    message:  'must be a URL for GIF, JPG or PNG image.'
  }

  private

  # ensure that there are no line items referencing this product
  def ensure_not_referenced_by_any_line_item
    unless line_items.empty?
      errors.add(:base, 'Line Items present')
      throw :abort
    end
  end
end
