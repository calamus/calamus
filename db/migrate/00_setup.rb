class Setup < ActiveRecord::Migration


  def self.up
    create_table :groups do |t|
      t.column :status, :string, :limit => 10, :default => "Active", :null => false
      t.column :category, :string, :limit => 10, :default => "", :null => false
      t.column :name, :string, :limit => 50, :null => false
      t.column :description, :string, :limit => 150, :null => false
      t.timestamps
    end

    create_table :participants do |t|
      t.column :status, :string, :limit => 10, :default => "Active", :null => false
      t.column :category, :string, :limit => 10, :default => "", :null => false
      t.column :first_name, :string, :limit => 50
      t.column :last_name, :string, :limit => 50
      t.column :nickname, :string, :limit => 50
      t.column :email_address, :string, :limit => 50
      t.timestamps
    end

    create_table :memberships do |t|
      t.column :status, :string, :limit => 10, :default => "Active", :null => false
      t.column :category, :string, :limit => 10, :default => "", :null => false
      t.column :group_id, :integer, :null => false
      t.column :participant_id, :integer, :null => false
      t.timestamps
    end

    create_table :events do |t|
      t.column :status, :string, :limit => 10, :default => "Active", :null => false
      t.column :category, :string, :limit => 10, :default => "", :null => false
      t.column :name, :string, :limit => 50, :null => false
      t.column :description, :string, :limit => 150
      t.column :agenda, :string, :limit => 150
      t.column :group_id, :integer, :null => false
      t.column :location_id, :integer
      t.column :start_time, :datetime, :null => false
      t.column :end_time, :datetime, :null => false
      t.timestamps
  end

    create_table :attendances do |t|
      t.column :status, :string, :limit => 10, :default => "Active", :null => false
      t.column :category, :string, :limit => 10, :default => "", :null => false
      t.column :event_id, :integer, :null => false
      t.column :participant_id, :integer, :null => false
      t.column :rsvp_date, :datetime, :null => false
      t.timestamps
    end

    create_table :locations do |t|
      t.column :name, :string, :limit => 20, :null => false
      t.column :group_id, :integer, :null => false
      t.column :street1, :string, :limit => 20
      t.column :street2, :string, :limit => 20
      t.column :city, :string, :limit => 20
      t.column :postal_code, :string, :limit => 20
      t.column :region, :string, :limit => 20
      t.column :country, :string, :limit => 20
      t.timestamps
    end

  end

  def self.down
    drop_table :attendances
    drop_table :memberships
    drop_table :participants
    drop_table :events
    drop_table :locations
    drop_table :groups
  end
end


