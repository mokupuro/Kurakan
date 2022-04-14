class AddDayOfWeekIdToCircleDay < ActiveRecord::Migration[6.1]
  def change
    add_reference :circle_days, :day_of_week, null: false, foreign_key: true
  end
end
