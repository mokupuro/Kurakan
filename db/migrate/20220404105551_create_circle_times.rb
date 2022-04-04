class CreateCircleTimes < ActiveRecord::Migration[6.1]
  def change
    create_table :circle_times do |t|
      t.references :circle, null: false, foreign_key: true
      t.time :active_start_time
      t.time :active_end_time

      t.timestamps
    end
  end
end
