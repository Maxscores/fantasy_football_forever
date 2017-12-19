class AddTwittertoPlayers < ActiveRecord::Migration[5.1]
  def change
    add_column :players, :twitter_handle, :string
  end
end
