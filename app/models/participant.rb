class Participant < ActiveRecord::Base


  has_many :security_profiles
  has_many :memberships
  has_many :attendances

#  accepts_nested_attributes_for :security_profiles, :allow_destroy => true, :reject_if => proc { |obj| obj.blank? }

end


