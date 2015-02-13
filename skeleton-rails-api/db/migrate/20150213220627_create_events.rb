class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.string :location
      t.datetime :date_time
      t.integer :host_id
      t.integer :flag_count, :default => 0
      t.string :category
      t.boolean :adult, :default => false
      t.boolean :public, :default => true

      t.timestamps
    end
  end
end
