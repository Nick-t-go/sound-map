class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :one_word
      t.string :how_loud
      t.string :music_type
      t.timestamps
    end
  end
end
