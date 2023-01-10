class RenameEnd < ActiveRecord::Migration[7.0]
  def change
    rename_column :events, :end, :end_time
  end
end
