module ApplicationHelper
  def text_benefit_color level
    step = 255 / 10
    abs_level = level.abs
    brightness = 255 - ( ( step ) * abs_level )
    intensity = 255 - ( ( step / 8 ) * abs_level )
    if level > 0
      green = intensity
      red = blue = brightness
    else
      red = intensity
      blue = green = brightness
    end
    "rgb(#{red},#{green},#{blue})"
  end
end
