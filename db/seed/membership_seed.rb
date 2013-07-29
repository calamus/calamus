begin

  Membership.delete_all

  group = Group.where( :name => 'Tai Kwan Leep Dojo').first

  user1 = Participant.where( :last_name => 'Jones' ).first
  user2 = Participant.where( :last_name => 'Smith' ).first
  user3 = Participant.where( :last_name => 'Brown' ).first


  Membership.create( :status => 'Active',
                     :category => 'Owner',
                     :participant => user1,
                     :group => group
                    )

  Membership.create( :status => 'Active',
                     :category => 'Member',
                     :participant => user2,
                     :group => group
                    )

  Membership.create( :status => 'Active',
                     :category => 'Member',
                     :participant => user3,
                     :group => group
                    )


end