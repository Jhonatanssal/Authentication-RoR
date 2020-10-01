class Post < ApplicationRecord
  belongs_to :user
  validates :tittle, :body, presence: true
end
