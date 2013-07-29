begin
  Attendance.delete_all


  event1 = Event.where( :name => 'Training Session 1').first
  event2 = Event.where( :name => 'Training Session 2').first
  event3 = Event.where( :name => 'Training Session 3').first
  event4 = Event.where( :name => 'Training Session 4').first

  user1 = Participant.where( :last_name => 'Jones' ).first
  user2 = Participant.where( :last_name => 'Smith' ).first
  user3 = Participant.where( :last_name => 'Brown' ).first

###
  Attendance.create( :status => 'Active',
                     :category => 'Leader',
                     :participant => user1,
                     :event => event1,
                     :rsvp_date => DateTime.now
                    )

  Attendance.create( :status => 'Active',
                     :category => 'Leader',
                     :participant => user2,
                     :event => event1,
                     :rsvp_date => DateTime.now
                    )
  Attendance.create( :status => 'Active',
                     :category => 'Leader',
                     :participant => user3,
                     :event => event1,
                     :rsvp_date => DateTime.now
                    )

###
  Attendance.create( :status => 'Active',
                     :category => 'Leader',
                     :participant => user1,
                     :event => event2,
                     :rsvp_date => DateTime.now
                    )

  Attendance.create( :status => 'Active',
                     :category => 'Leader',
                     :participant => user2,
                     :event => event2,
                     :rsvp_date => DateTime.now
                    )
  Attendance.create( :status => 'Active',
                     :category => 'Leader',
                     :participant => user3,
                     :event => event2,
                     :rsvp_date => DateTime.now
                    )

###
  Attendance.create( :status => 'Active',
                     :category => 'Leader',
                     :participant => user1,
                     :event => event3,
                     :rsvp_date => DateTime.now
                    )

  Attendance.create( :status => 'Active',
                     :category => 'Leader',
                     :participant => user2,
                     :event => event3,
                     :rsvp_date => DateTime.now
                    )
  Attendance.create( :status => 'Active',
                     :category => 'Leader',
                     :participant => user3,
                     :event => event3,
                     :rsvp_date => DateTime.now
                    )

###
  Attendance.create( :status => 'Active',
                     :category => 'Leader',
                     :participant => user1,
                     :event => event4,
                     :rsvp_date => DateTime.now
                    )

  Attendance.create( :status => 'Active',
                     :category => 'Leader',
                     :participant => user2,
                     :event => event4,
                     :rsvp_date => DateTime.now
                    )
  Attendance.create( :status => 'Active',
                     :category => 'Leader',
                     :participant => user3,
                     :event => event4,
                     :rsvp_date => DateTime.now
                    )

end