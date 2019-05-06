class AddColumnToContributions < ActiveRecord::Migration[5.1]
  def change
    add_column :contributions, :message, :string
  end
end
