class CreateGroups < ActiveRecord::Migration
  def self.up
    create_table :groups do |t|
      t.integer :group_id
      t.string :title, :short_name
      t.text :description
      t.timestamps
    end
    
    create_table :user_groups, :id => false do |t|
      t.integer :user_id, :group_id
    end
  end

  def self.down
    drop_table :groups
    drop_table :user_groups
  end
end
