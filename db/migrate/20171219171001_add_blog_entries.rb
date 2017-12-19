class AddBlogEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :blog_entries do |t|
      t.column :title, :string
      t.column :body, :text
      t.column :profile_id, :integer

      t.timestamps
    end
  end
end
