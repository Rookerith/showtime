class Movie < ActiveRecord::Base
  attr_accessible :showtime_date, :showtime_time, :time

  def showtime
  	"#{formatted_date} (#{formatted_time})"
  end

  def formatted_date
  	showtime_date.strftime("%B%D,%Y")
  end

  def formatted_time
  	formatted_time.strftime("%l:%M,%p").strip.downcase
  end
end
