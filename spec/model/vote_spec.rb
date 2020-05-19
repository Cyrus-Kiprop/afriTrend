require 'rails_helper'
RSpec.describe 'Vote' do
  let(:vote) { Vote.new(user_id: 2, article_id: 5) }
  let(:user) { User.new(first_name: 'John', last_name: 'Doe', email: 'example25dfdf4@gmail.com', password: 'password') }

  context 'user_id' do
    it "User's user_id must exist" do
      vote.user_id = nil
      expect(vote.valid?).to be_falsy
    end
    it 'should return false if the user_id is not an integer' do
      vote.user_id = 'aaa'
      expect(vote.valid?).to be_falsy
    end
  end

  context 'Article_id' do
    it "vote's article_id must exist" do
      vote.article_id = nil
      expect(vote.valid?).to be_falsy
    end
    it 'should return false if the article_id is not an integer' do
      vote.article_id = 'aaa'
      expect(vote.valid?).to be_falsy
    end
  end
end
