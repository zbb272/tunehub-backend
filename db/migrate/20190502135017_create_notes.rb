class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.integer :x
      t.integer :y
      t.belongs_to :contribution, foreign_key: true

      t.timestamps
    end
  end
end
