begin

  SecurityProfile.delete_all
  Participant.delete_all



###  User 1
  user1 = Participant.create(
                     :status => 'Active',
                     :category => 'User',
                     :first_name => 'Bob',
                     :last_name => 'Jones',
                     :nickname => '',
                     :email_address => 'bobjones@gmail.com' )

  SecurityProfile.create(
                    :participant => user1,
                    :email => 'bobjones@gmail.com',
                    :password => 'foobar'
                    )

###  User 2

  user1 = Participant.create(
                     :status => 'Active',
                     :category => 'User',
                     :first_name => 'Joe',
                     :last_name => 'Smith',
                     :nickname => '',
                     :email_address => 'joesmith@gmail.com' )

  SecurityProfile.create(
                    :participant => user1,
                    :email => 'joesmith@gmail.com',
                    :password => 'foobar'
                    )


###  User 3

  user1 = Participant.create(
                     :status => 'Active',
                     :category => 'User',
                     :first_name => 'John',
                     :last_name => 'Brown',
                     :nickname => '',
                     :email_address => 'johnbrown@gmail.com' )

  SecurityProfile.create(
                    :participant => user1,
                    :email => 'johnbrown@gmail.com',
                    :password => 'foobar'
                    )


end