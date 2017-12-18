class CreateUserFavorites < ActiveRecord::Migration[5.1]
  def change
    create_table :user_favorites do |t|
      t.references :player, foreign_key: true
      t.references :user, foreign_key: true
    end
  end
end
