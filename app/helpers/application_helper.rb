module ApplicationHelper
  def article_categories
    Category.all.map(&:name)
  end

  def links
    result = []
    article_categories.each do |category|
      result << link_to(category, article_categories_path(category), class: 'header__nav-link')
    end
    result
  end

  def map_links(category)
    link_to(category, article_categories_path(category), class: 'more-articles__category')
  end

  def upvote_or_downvote_btn(article)
    vote = Vote.find_by(article: article, user: current_user)
    if vote
      link_to('Disvote!', article_vote_destroy_path({ id: vote.id }), method: :delete)
    else
      link_to('vote!', article_vote_create_path({ id: article.id }), method: :post)
    end
  end

  def split_article_content(content)
    content.slice!(0..content.index('.'))
  end

  def duration(content)
    (content.size.to_i / 300).floor
  end

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
