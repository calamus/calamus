begin
  Event.delete_all

  ## Adding Events to the Tai Kwan Leep dojo

  group = Group.where( :name => 'Tai Kwan Leep Dojo').first


  Event.create(:status => 'Active',
               :category => 'Public',
               :name => 'Training Session 1',
               :description => 'The accomplishment of progress towards enlightenment',
               :agenda => '1) Meet in the part <br> 2) Collect lots of underpants <br> 3) Unknown step <br> 4) Profit ! ',
               :group => group,
               :location => group.locations.first,
               :start_time => DateTime.new,
               :end_time => DateTime.new + 4.hours
              )

  Event.create(:status => 'Active',
               :category => 'Public',
               :name => 'Training Session 2',
               :description => 'More accomplishment of progress towards enlightenment',
               :agenda => '1) Meet in the part <br> 2) Collect lots of underpants <br> 3) Unknown step <br> 4) Profit ! ',
               :group => group,
               :location => group.locations.first,
               :start_time => DateTime.new + 2.days,
               :end_time => DateTime.new + 2.days + 4.hours
              )

  Event.create(:status => 'Active',
               :category => 'Public',
               :name => 'Training Session 3',
               :description => 'Advanced enlightenment',
               :agenda => '1) Meet in the part <br> 2) Collect lots of underpants <br> 3) Unknown step <br> 4) Profit ! ',
               :group => group,
               :location => group.locations.first,
               :start_time => DateTime.new + 4.days,
               :end_time => DateTime.new + 4.days + 4.hours
              )

  Event.create(:status => 'Active',
               :category => 'Public',
               :name => 'Training Session 4',
               :description => 'Enlightenment achieved',
               :agenda => '1) Meet in the part <br> 2) Collect lots of underpants <br> 3) Unknown step <br> 4) Profit ! ',
               :group => group,
               :location => group.locations.first,
               :start_time => DateTime.new + 4.days,
               :end_time => DateTime.new + 4.days + 4.hours
              )

end