class AddEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.column :location, :string
      t.column :description, :string
      t.column :start_time, :datetime
      t.column :end_time, :datetime

      t.timestamps
    end
  end
end
