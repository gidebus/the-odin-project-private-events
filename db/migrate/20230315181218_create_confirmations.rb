class CreateConfirmations < ActiveRecord::Migration[7.0]
  def change
    create_table :confirmations do |t|
      t.integer :creator_id
      t.integer :attended_event_id

      t.timestamps
    end
  end
end
