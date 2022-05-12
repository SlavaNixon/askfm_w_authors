class Question < ApplicationRecord
  belongs_to :user
  belongs_to :who_ask, class_name: "User"
end
