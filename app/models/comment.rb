class Comment < ApplicationRecord
  belongs_to :story
  has_many :response_comments, dependent: :destroy

  validates :user, presence: true
  validates :content, presence: true
end
