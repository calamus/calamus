class Group < ActiveRecord::Base
  has_many :events
  has_many :locations

  has_many :memberships, dependent: :destroy
  has_many :participants, through: :memberships
end
