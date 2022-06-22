class HashtagList < ApplicationRecord
  has_many :hashtags, dependent: :destroy
end
