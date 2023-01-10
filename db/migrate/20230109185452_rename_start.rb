class RenameStart < ActiveRecord::Migration[7.0]
  def change
    rename_column :events, :start, :start_time
  end
end
