class Group < ActiveRecord::Base
  has_many :sub_groups, :dependent => :destroy
  
  has_and_belongs_to_many :users, :join_table => "user_groups", :delete_sql => 'DELETE FROM user_groups WHERE group_id=#{id}'
  
  validates :title, :presence => true
  validates :description, :presence => true
end
