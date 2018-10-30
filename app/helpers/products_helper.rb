module ProductsHelper

  def color_image_path(color)
    case color
    when "красный"
      return "https://image.ibb.co/fX5ixf/Hamelion-2.png"
    when "золотой"
      return "https://image.ibb.co/e7JtML/color.png"
    when "черный"
      return "https://image.ibb.co/cnXVcf/CHernyj-1.png"
    end
  end

end
