# frozen_string_literal: true

# A clock that handles times without dates.
# You can add and subtract minutes and hours from it.
# Two clocks that represent the same time will be equal to each other.
class Clock
  attr_reader :hour, :minute

  def initialize(hour: 0, minute: 0)
    @hour = hour % 24

    minute = handle_minute_rollover(minute) if minute > 59 || minute.negative?
    @minute = minute
  end

  def handle_minute_rollover(minute)
    rollover = minute / 60
    @hour = (@hour + rollover) % 24
    minute % 60
  end

  def +(other)
    hour = @hour + other.hour
    minute = @minute + other.minute

    Clock.new(hour: hour, minute: minute)
  end

  def -(other)
    hour = @hour - other.hour
    minute = @minute - other.minute

    Clock.new(hour: hour, minute: minute)
  end

  def ==(other)
    to_s == other.to_s
  end

  def to_s
    format('%02<hour>d:%02<minute>d', hour: hour, minute: minute)
  end
end
