module ApplicationHelper

   def upvote_or_downvote_btn(article)
    vote = Vote.find_by(article: article, user: current_user)
    if vote
      link_to('Disvote!', article_vote_destroy_path({id: vote.id}), method: :delete)
    else
      link_to('vote!', article_vote_create_path({id: article.id}), method: :post)
    end
  end
end
