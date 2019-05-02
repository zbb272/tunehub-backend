class AddApprovedColumnToContributions < ActiveRecord::Migration[5.1]
  def change
    add_column :contributions, :approved, :boolean
  end
end
