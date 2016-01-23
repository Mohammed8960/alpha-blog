class Article < ActiveRecord::Base
  belongs_to :user
  has_many :article_categories
  has_many :categories, through: :article_categories
  validates :title, presence: true , length: {minmum: 3, maximum: 60}
  validates :description, presence: true, length: {minmum: 10, maximum: 400}
end
