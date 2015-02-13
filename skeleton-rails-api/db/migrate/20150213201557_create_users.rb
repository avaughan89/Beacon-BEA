class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.string :city
      t.string :state
      t.binary :picture
      t.integer :host_rating, :default => 0
      t.integer :host_rating_count, :default => 0
      t.integer :attendee_rating, :default => 0
      t.integer :attendee_rating_count, :default => 0
      t.integer :flag_count, :default => 0

      t.timestamps
    end
  end
end
