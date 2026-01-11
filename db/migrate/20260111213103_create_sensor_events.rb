class CreateSensorEvents < ActiveRecord::Migration[8.1]
  def change
    create_table :sensor_events do |t|
      t.references :room, null: false, foreign_key: true

      t.integer :delta, null: false

      t.datetime :recorded_at, null: false

      t.timestamps
    end
  end
end
