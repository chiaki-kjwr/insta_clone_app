class AddNameToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string,null: false, default: ""
    #add_column :users, :AddUserNameToUser, :string
    add_column :users, :username, :string,null: false, default: ""
  end
end
