module CirclesHelper
  def display_time(active_time)
    active_time&.strftime("%I:%M")
  end
end
