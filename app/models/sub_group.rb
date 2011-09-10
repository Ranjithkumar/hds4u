class SubGroup < Group
  belongs_to :group
  
  validates :group_id, :presence => true
end
