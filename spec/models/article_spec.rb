require 'rails_helper'

RSpec.describe Article, type: :model do
  describe '#validations' do
    let(:article) { build(:article) }

    it 'tests that factory is valid' do
      expect(article).to be_valid
      article.save!
      another_article = build(:article)
      expect(another_article).to be_valid
    end
  
    it 'has an invalid title' do
      article.title = ''
      expect(article).not_to be_valid
      expect(article.errors[:title]).to include("can't be blank")
    end

    it 'has an invalid content' do
      article.content = ''
      expect(article).not_to be_valid
      expect(article.errors[:content]).to include("can't be blank")
    end

    it 'has an invalid slug' do
      article.slug = ''
      expect(article).not_to be_valid
      expect(article.errors[:slug]).to include("can't be blank")
    end

    it 'has an unique slug' do
      article_1 = create(:article)
      article_2 = create(:article)
      article_3 = build(:article, slug: article_1.slug)

      expect(article_1).to be_valid
      expect(article_2).to be_valid
      expect(article_3).not_to be_valid
      expect(article_3.errors[:slug]).to include('has already been taken')
    end
  end
end
