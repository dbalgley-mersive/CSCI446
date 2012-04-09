class DropUserSessionsTable < ActiveRecord::Migration
  def up
  	drop_table :user_sessions
  end

  def down
  	create_table :user_sessions do |t|
  	  t.string :username
      t.string :password

      t.timestamps
    end
  end
end
