class RemoveStartDateEndDate < ActiveRecord::Migration[5.2]
  def change
    remove_column :tasks, :start_date
    remove_column :tasks, :end_date
  end
end
