class Question < ApplicationRecord
  after_save :hashtag_parse

  belongs_to :user
  belongs_to :who_ask, class_name: "User", optional: true
  has_many :hashtags, dependent: :destroy

  private

  def hashtag_parse
    self.hashtags.destroy_all

    # Парсинг хештегов у вопроса
    HashtagParser.parse(self.body).each do |element| 
        self.hashtags << Hashtag.create(body: element[:text], question: self)
    end

    # Парсинг хештегов у ответа
    if answer
      HashtagParser.parse(self.answer).each do |element| 
          self.hashtags << Hashtag.create(body: element[:text], question: self)
      end
    end
  end
end
