class Blog::VotesController < ApplicationController
  before_action :find_comment, only: [:create, :destroy]
  before_action :find_vote, only: :destroy

  def create
    votes = @comment.votes
    vote = votes.create user_id: current_user.id

    render json: {votes_count: votes.size, vote_id: vote.id}
  end

  def destroy
    @vote.destroy
    render json: {votes_count: @comment.votes.size}
  end

  private
  def find_comment
    @comment = Comment.find_by id: params[:comment_id]
  end

  def find_vote
    @vote = Vote.find_by id: params[:id]
  end
end
