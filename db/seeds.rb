# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



# Seeded data summary
# two groups,


require File.expand_path('../seed/group_seed', __FILE__)

require File.expand_path('../seed/locations_seed', __FILE__)

require File.expand_path('../seed/participant_seed', __FILE__)

require File.expand_path('../seed/event_seed', __FILE__)

require File.expand_path('../seed/membership_seed', __FILE__)

require File.expand_path('../seed/attendance_seed', __FILE__)


