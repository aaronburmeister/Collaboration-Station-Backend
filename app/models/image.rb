class Image < ApplicationRecord
  belongs_to :user

  validates :imageURL, presence: true
end
