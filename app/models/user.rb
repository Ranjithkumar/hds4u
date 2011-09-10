class User < ActiveRecord::Base
  has_many :user_roles
  has_many :roles, :through => :user_roles
  has_many :faqs
  
  has_and_belongs_to_many :groups
  
  validates :email, :presence => true, :uniqueness => true
  validates :name, :presence => true
  validates :user_name, :presence => true, :uniqueness => true
  validates :employee_id, :presence => true
end
