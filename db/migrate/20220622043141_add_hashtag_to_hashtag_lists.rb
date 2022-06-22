class AddHashtagToHashtagLists < ActiveRecord::Migration[7.0]
  def change
    add_reference :hashtags, :hashtag_list, foreign_key: true
  end
end
