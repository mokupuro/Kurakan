class CircleTime < ApplicationRecord
  belongs_to :circle

  def display_start_time
    self.active_start_time.strftime("%I:%M")
  end

  def display_end_time
    self.active_end_time.strftime("%I:%M")
  end
end
