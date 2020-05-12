module ApplicationHelper
  def article_categories
    Category.all.map(&:name)
  end
  # rubocop:disable Metrics/PerceivedComplexity,Metrics/CyclomaticComplexity

  def links
    result = []
    article_categories.each do |category|
      if category == 'Fashion'
        result << link_to(category, article_categories_path(category), class: 'header__nav-link')
      elsif category == 'Magazine'
        result << link_to(category, article_categories_path(category), class: 'header__nav-link')
      elsif category == 'Sports'
        result << link_to(category, article_categories_path(category), class: 'header__nav-link')
      elsif category == 'Business'
        result << link_to(category, article_categories_path(category), class: 'header__nav-link')
      elsif category == 'Entertainment'
        result << link_to(category, article_categories_path(category), class: 'header__nav-link')
      elsif category == 'News'
        result << link_to(category, article_categories_path(category), class: 'header__nav-link')
      end
    end
    result
  end

  def map_links(category)
    if category == 'Fashion'
      link_to(category, article_categories_path(category), class: 'more-articles__category')
    elsif category == 'Magazine'
      link_to(category, article_categories_path(category), class: 'more-articles__category')
    elsif category == 'Sports'
      link_to(category, article_categories_path(category), class: 'more-articles__category')
    elsif category == 'Business'
      link_to(category, article_categories_path(category), class: 'more-articles__category')
    elsif category == 'Entertainment'
      link_to(category, article_categories_path(category), class: 'more-articles__category')
    elsif category == 'News'
      link_to(category, article_categories_path(category), class: 'more-articles__category')
    end
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
  # rubocop:enable Metrics/PerceivedComplexity,Metrics/CyclomaticComplexity
end
