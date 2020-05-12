class VotesController < ApplicationController
  before_action :authenticate_user!
  def create
    vote = current_user.votes.build(article_id: vote_params)

    if vote.save
      flash[:success] = 'Successfully voted'
      redirect_back fallback_location: root_path
    else
      flash[:error] = 'Internal server error'
    end
  end

  def destroy
    vote = Vote.find_by_id(vote_params)
    if vote.destroy
      flash[:success] = 'Successfully unvoted'
      redirect_back fallback_location: root_path
    else
      flash[:error] = 'Internal server error'
    end
  end

  private

  def vote_params
    params.require(:id)
  end
end
