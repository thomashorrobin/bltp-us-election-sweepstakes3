class CreatePredictions < ActiveRecord::Migration
  def change
    create_table :predictions do |t|
      t.string :first_name
      t.string :last_name
      t.integer :trump_ec_votes
      t.integer :clinton_ec_votes
      t.datetime :lockin_datetime

      t.timestamps null: false
    end
  end
end
