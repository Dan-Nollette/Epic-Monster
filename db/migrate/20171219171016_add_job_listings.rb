class AddJobListings < ActiveRecord::Migration[5.1]
  def change
    create_table :job_listings do |t|
      t.column :title, :string
      t.column :description, :text
      t.column :keywords, :string
      t.column :profile_id, :integer

      t.timestamps
    end
  end
end
