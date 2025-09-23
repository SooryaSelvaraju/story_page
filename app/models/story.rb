class Story < ApplicationRecord
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :description, presence: true
  validates :url, presence: true
  validates :user, presence: true
end
