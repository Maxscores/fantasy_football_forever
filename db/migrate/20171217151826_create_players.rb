class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.integer :active
      t.integer :jersey
      t.string :last_name
      t.string :first_name
      t.string :display_name
      t.string :pro_team
      t.string :position
      t.string :height
      t.string :weight
      t.string :dob
      t.string :college
    end
  end
end
