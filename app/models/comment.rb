class Comment < ApplicationRecord
  belongs_to :story
  has_many :response_comments, dependent: :destroy
end
