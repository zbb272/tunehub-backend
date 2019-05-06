class AddColumnToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :latest_contribution, :integer
  end
end
