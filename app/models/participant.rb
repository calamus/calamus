class Participant < ActiveRecord::Base
  has_many :security_profiles
  has_many :attendances

  has_many :memberships, dependent: :destroy
  has_many :groups, through: :memberships
end


