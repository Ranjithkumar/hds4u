class AddRoleIdIntoUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :super_admin, :boolean, :default => false
    add_column :users, :role_id, :integer
  end

  def self.down
    remove_column :users, :super_admin
    remove_column :users, :role_id
  end
end
