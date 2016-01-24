class CreateCivGames < ActiveRecord::Migration
  def change
    create_table :civ_games do |t|

      t.timestamps null: false
    end
  end
end
