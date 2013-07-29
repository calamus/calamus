class Event < ActiveRecord::Base

  has_many :attendances
  belongs_to :group
  belongs_to :location

end
