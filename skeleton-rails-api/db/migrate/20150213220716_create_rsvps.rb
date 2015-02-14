class CreateRsvps < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.integer :attendee_id
      t.integer :event_id
      t.string :status #options: accepted, pending, denied

      t.timestamps
    end
  end
end
