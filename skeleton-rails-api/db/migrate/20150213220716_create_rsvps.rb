class CreateRsvps < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.integer :user_id, index: true
      t.integer :event_id, index: true

      t.timestamps
    end
  end
end
