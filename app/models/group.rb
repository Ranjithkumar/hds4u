class Group < ActiveRecord::Base
  has_many :sub_groups
  
  has_and_belongs_to_many :users, :join_table => "user_groups"
  
  validates :title, :presence => true
  validates :description, :presence => true
end
