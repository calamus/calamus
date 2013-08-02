class Group < ActiveRecord::Base
  has_many :memberships, dependent: :destroy
  has_many :events
  has_many :locations
end
