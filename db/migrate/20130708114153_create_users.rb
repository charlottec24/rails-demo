class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :password
      t.timestamps
      t.integer :login_count, :default => 0
    end
  end
end
