begin
  Location.delete_all

  group = Group.where( :name => 'Tai Kwan Leep Dojo').first

  Location.create( :name => 'Dojo Location',
                   :group => group,
                   :street1 => '1234 Main Street',
                   :street2 => '',
                   :city => 'Chicago',
                   :region => 'Ill',
                   :postal_code => '60606',
                   :country => 'US'
                  )

end