class CreateFfTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :ff_teams do |t|
      t.string :name
      t.string :owner
    end
  end
end
