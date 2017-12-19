class AddSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :skills do |t|
      t.column :name, :string

      t.timestamps
    end
  end
end
