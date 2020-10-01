class Post < ApplicationRecord
  belongs_to :user
  validates :tittle, :body, pressence: true 
end
