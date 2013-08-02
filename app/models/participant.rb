class Participant < ActiveRecord::Base
  has_many :security_profiles
  has_many :memberships, dependent: :destroy
  has_many :attendances
end


