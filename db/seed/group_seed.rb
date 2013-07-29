begin

  Group.delete_all


  Group.create( :status => 'Active',
                :category => 'Public',
                :name => 'Awesome Collective of Awesomeness',
                :description => 'This group is awesome at accomplishing awesome things that are awesome'
              )

  Group.create( :status => 'Active',
                :category => 'Public',
                :name => 'Tai Kwan Leep Dojo',
                :description => 'Tai Kwan Leep is the wine of purity,  not the vinegar of hostility'
              )

end