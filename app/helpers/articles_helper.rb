module ArticlesHelper

  def category_name_border_color(name)
    if name == 'Fashion'
'#F5A535'
    elsif name == 'Magazine'
      '#9F9723'
    elsif name == 'Sports'
      '#EC422A'
    elsif name == 'Business'
      '#DF9281'
    elsif name == 'News'
      '#E18E2D'
    else
      'white'
    end
  end
end
