class Group < ActiveRecord::Base


  has_many :memberships
  has_many :events
  has_many :locations
end
