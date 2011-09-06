class CreateTickets < ActiveRecord::Migration
  def self.up
    create_table :tickets do |t|
      t.string :subject
      t.text :description
      t.integer :priority_id, :place_of_call_id, :problem_location_id, :region_id
      t.string :circuit_node
      t.integer :category_id, :sub_category_id, :requester_id, :ticket_status_id, :item_id, :user_id
      t.timestamps
    end
  end

  def self.down
    drop_table :tickets
  end
end
