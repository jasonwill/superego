class CreateEgoistUsersTable < ActiveRecord::Migration
   def self.up
     create_table :users do |t|
       t.string :uid
       t.string :first_name
       t.string :last_name
      
       t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end