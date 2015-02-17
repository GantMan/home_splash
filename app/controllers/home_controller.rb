class HomeController < ApplicationController
  def index
    @current_time = Time.now.stamp_like("Feb 1st 09:00 pm")
    # Adjust message depending on the hour of the day!
    @greet_message = case Time.now.hour
    when 5..11
      "Goooooood Morning!"
    when 12..15
      "Good afternoon!"
    when 16..19
      "Good evening!"
    when 20..23, 0..4
      "Good NIGHT"
    end

  end
end
