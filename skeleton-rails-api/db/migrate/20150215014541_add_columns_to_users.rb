class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :host_rating, :integer, :default => 0
    add_column :users, :host_rating_count, :integer, :default => 0
    add_column :users, :attendee_rating, :integer, :default => 0
    add_column :users, :attendee_rating_count, :integer, :default => 0
    add_column :users, :flag_count, :integer, :default => 0
  end
end
