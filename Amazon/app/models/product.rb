class Product < ApplicationRecord

  validates :title, presence: true, uniqueness: {case_sensitive: false, message: "Must be unique"}

  validates(:price, { numericality: { greater_than: 0 } })
# #
# #   validates :description, presence: true, length: { minimum: 10 }
#
  before_validation :set_defaults
#
  validates(:sale_price, { numericality: { less_than_or_equal_to: :price } })
#
#
#
# #   before_save :titleize_title
# #
# #   def self.search(word)
# #
# #     where(['title ILIKE ?', "%#{word}%"]).or(where(['description ILIKE ?', "%#{word}%"]))
# #
# #   end
# #
  def on_sale?
    if self.price > self.sale_price
      true
    end
  end
# #
private
#
    def set_defaults
      # self.price ||= 0
      self.sale_price ||= self.price
    end

    def titleize_title
      self.title = title.titleize
    end


end
