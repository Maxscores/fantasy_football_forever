class AddUserImagetoPlayers < ActiveRecord::Migration[5.1]
  def change
    add_column :players, :profile_image, :string
  end
end
