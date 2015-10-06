class Product < ActiveRecord::Base
	
belongs_to :category
has_many :line_items
has_many :orders, through: :line_items
before_destroy :ensure_not_referenced_by_any_line_item
	validates :name,:price,:quantity,presence: true

validates :price,numericality:{greater_than_or_equal_to:0.01}
validates :quantity,numericality: {only_integer: true}

private
def ensure_not_referenced_by_any_line_item
  if line_items.empty?
    return true
else
   errors.add(:base,'Line Items present')
	return false
end

end

end
