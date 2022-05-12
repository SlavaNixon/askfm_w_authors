class AddWhoAskToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :questions, :who_ask_id, :integer
  end
end
