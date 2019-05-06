class AddColumnsToNotes < ActiveRecord::Migration[5.1]
  def change
    add_column :notes, :bc, :string
    add_column :notes, :selected, :boolean
    add_column :notes, :frequency, :float
  end
end
