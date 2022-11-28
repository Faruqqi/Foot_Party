class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.references :user, null: false, foreign_key: true
      t.references :field, null: false, foreign_key: true
      t.date :date
      t.time :start_time
      t.time :end_time
      t.integer :number_of_players

      t.timestamps
    end
  end
end
