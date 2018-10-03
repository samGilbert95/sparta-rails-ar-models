class CreateScreens < ActiveRecord::Migration[5.2]
  def change
    create_table :screens do |t|
      t.integer :screen_no
      t.string :film_playing
      t.integer :cinema_id

      t.timestamps
    end
  end
end
