class AddAttendees < ActiveRecord::Migration[5.1]
  def change
    create_table :attendees do |t|
      t.column :profile_id, :integer
      t.column :event_id, :integer

      t.timestamps
    end
  end
end
