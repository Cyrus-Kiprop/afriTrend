require 'rails_helper'
RSpec.describe 'Article' do
  let(:user) { User.create(first_name: 'sme', last_name: 'last', email: 'somefdsfsdf@gmail.com', password: 'password') }
  context 'top_voted_article' do
    it 'returns an activeRecord:Relation of articles creaed by the users' do
      expect(Article.top_voted_article(1).length <= 1).to be_truthy
    end
  end
end
