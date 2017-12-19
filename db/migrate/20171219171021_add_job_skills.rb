class AddJobSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :job_skills do |t|
      t.column :skill_id, :integer
      t.column :job_listing_id, :integer

      t.timestamps
    end
  end
end
