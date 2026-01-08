class CreateCounts < ActiveRecord::Migration[8.1]
  def change
    create_table :counts do |t|
      t.integer :sensorGroup
      t.integer :currentCount

      t.timestamps
    end
  end
end
