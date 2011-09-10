class Role < ActiveRecord::Base
  validates :title, :presence => true
end
