class AddProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.column :name, :string
      t.column :description, :text
      t.column :user_id, :integer
      t.column :kind, :string

      t.timestamps
    end
  end
end
