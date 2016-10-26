class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.string :sequence_string

      t.timestamps null: false
    end
  end
end
