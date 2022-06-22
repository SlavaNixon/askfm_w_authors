class Hashtag < ApplicationRecord
  after_create :connect_hashtag_list

  belongs_to :question
  belongs_to :hashtag_list, optional: true

  def connect_hashtag_list
    hashtag = HashtagList.find_by(body: self.body.downcase)
    # Вернет true, если хештег уже существует
    if hashtag
      hashtag.hashtags << self
      self.hashtag_list = hashtag
    else
      HashtagList.create(body: self.body.downcase, hashtags: [self])
    end
  end
end
