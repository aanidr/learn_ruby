class Timer
  #write your code here

  def seconds
    @seconds || 0
  end

  def minutes
    @minutes || 0
  end

  def hours
    @hours || 0
  end

  def seconds=(new_sec)
    @seconds = new_sec % 60
    normalize_minutes(new_sec / 60)
  end

  def normalize_minutes(new_min)
    @minutes = new_min % 60
    @hours = new_min / 60
  end

  def time_string
    Time.new(1900,1,1,hours,minutes,seconds).strftime('%T')
  end
end
