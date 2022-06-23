class HashtagList < ApplicationRecord
  has_many :hashtags, dependent: :destroy
  has_many :questions, through: :hashtags
end
