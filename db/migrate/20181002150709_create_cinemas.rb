class CreateCinemas < ActiveRecord::Migration[5.2]
  def change
    create_table :cinemas do |t|
      t.string :name
      t.string :location
      t.integer :constructed

      t.timestamps
    end
  end
end
