class Post < ApplicationRecord
  belongs_to :user
  validates :title, :body, presence: true, length: { minimum: 3 }
end
