class ResponseComment < ApplicationRecord
  belongs_to :comment

  validates :content, presence: true
  validates :user, presence: true
end
