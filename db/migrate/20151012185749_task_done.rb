class TaskDone < ActiveRecord::Migration
  def change
  # change_table :tasks do |t|
      add_column :tasks, :done, :boolean, :default => false
    # end
  end
end
