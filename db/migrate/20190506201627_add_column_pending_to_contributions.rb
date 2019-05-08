class AddColumnPendingToContributions < ActiveRecord::Migration[5.1]
  def change
    add_column :contributions, :pending, :boolean
  end
end
