class CreatePuzzles < ActiveRecord::Migration[5.1]
  def change
    create_table :puzzles do |t|
      t.string :name
      t.string :file_name
      t.integer :default_size

      t.timestamps
    end
  end
end
