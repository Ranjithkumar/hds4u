class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :recoverable, :rememberable, :trackable
  
  has_many :user_roles
  has_many :roles, :through => :user_roles
  has_many :faqs
  
  has_and_belongs_to_many :groups
  
  validates :email, :presence => true, :uniqueness => true, :email_format => true, :length => { :minimum => 5 }
  validates :name, :presence => true
  validates :user_name, :presence => true, :uniqueness => true, :length => { :within => 2..20 }, :check_special_character => true
  validates :employee_id, :presence => true
  validates :password, :presence => true, :length => { :within => 3..20 }, :if => :check_pwd_validation?
  validates :password_confirmation, :presence => true, :if => :check_pwd_validation?
  validates_confirmation_of :password, :if => :password_required?
  
  attr_accessor :no_pwd_validation
  
  
  protected

  def password_required?
    !password.blank?
  end
  
  def check_pwd_validation?
    !no_pwd_validation
  end
  
end
