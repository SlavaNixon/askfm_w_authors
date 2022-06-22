class Question < ApplicationRecord
  after_save :hashtag_parse

  belongs_to :user
  belongs_to :who_ask, class_name: "User", optional: true
  has_many :hashtags

  private

  def hashtag_parse
    HashtagParser.parse(self.body).each do |element| 
      self.hashtag << Hashtag.create(body: element[:text], question: self)
    end
  end
end
