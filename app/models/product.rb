class Product < ApplicationRecord
  serialize :colors, Array

  validates :title, :price, presence: true
  before_save :remove_first_color

  def colors_enum
    ['золотой', "красный", "черный"]
  end


  # First elem in colors array is always blank
  def remove_first_color
    colors.shift
  end

end
