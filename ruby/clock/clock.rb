class Clock
  attr_reader :hour, :minute

  def initialize(hour: 0, minute: 0)
    @hour = format_hour(hour)
    @minute = format_minute(minute)
  end

  def format_hour(hour)
    hour = hour % 24
    hour.to_s.rjust(2, '0')
  end

  def format_minute(minute)
    if minute > 59 || minute.negative?
      rollover = minute / 60
      @hour = format_hour(@hour.to_i + rollover)
      minute = minute % 60
    end
    minute.to_s.rjust(2, '0')
  end

  def +(other)
    hour = @hour.to_i + other.hour.to_i
    minute = @minute.to_i + other.minute.to_i

    Clock.new(hour: hour, minute: minute)
  end

  def -(other)
    hour = @hour.to_i - other.hour.to_i
    minute = @minute.to_i - other.minute.to_i

    Clock.new(hour: hour, minute: minute)
  end

  def ==(other)
    hour == other.hour && minute == other.minute
  end

  def to_s
    "#{@hour}:#{@minute}"
  end
end
