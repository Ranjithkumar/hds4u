class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :name, :crypted_password, :email, :user_name
      t.integer :employee_id, :phone_no, :mobile_no
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
