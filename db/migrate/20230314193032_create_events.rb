class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :name
      t.date :date
      t.text :description
      t.string :location

      t.timestamps
    end
  end
end
