class AddProfileSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :profile_skills do |t|
      t.column :skill_id, :integer
      t.column :profile_id, :integer

      t.timestamps
    end
  end
end
