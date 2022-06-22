class AddHashtagToQuestions < ActiveRecord::Migration[7.0]
  def change
    add_reference :questions, :hashtag, foreign_key: true
  end
end
