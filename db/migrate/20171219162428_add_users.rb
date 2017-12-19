class AddUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.column :email, :string
      t.column :first_name, :string
      t.column :last_name, :string
      t.column :permission_level, :string
      t.column :password_hash, :string
      t.column :password_salt, :string

      t.timestamps
    end
  end
end
