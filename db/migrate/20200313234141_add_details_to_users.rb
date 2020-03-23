class AddDetailsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :profile_photo, :string
    add_column :users, :number, :string
    add_column :users, :web, :string
    add_column :users, :sex, :string
    add_column :users, :profile, :string
  end
end
