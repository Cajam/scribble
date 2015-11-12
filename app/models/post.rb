class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: {in: 1..20}, uniqueness: true
  validates :text, presence: true
end
