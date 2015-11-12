class Post < ActiveRecord::Base
  has_many :comments
  validates :title, presence: true, length: {in: 1..20}, uniqueness: true
  validates :text, presence: true
end
