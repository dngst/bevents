class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.string :location
      t.string :category
      t.datetime :date
      t.timestamp :start
      t.timestamp :end

      t.timestamps
    end
  end
end
