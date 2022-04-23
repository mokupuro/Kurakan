class CreateCircleDays < ActiveRecord::Migration[6.1]
  def change
    create_table :circle_days do |t|
      t.references :circle, null: false, foreign_key: true

      t.timestamps
    end
  end
end
