# frozen_string_literal: true

module TwelveDays
  GIFTS = [
    'twelve Drummers Drumming', 'eleven Pipers Piping',
    'ten Lords-a-Leaping', 'nine Ladies Dancing',
    'eight Maids-a-Milking', 'seven Swans-a-Swimming',
    'six Geese-a-Laying', 'five Gold Rings', 'four Calling Birds',
    'three French Hens', 'two Turtle Doves', 'and a Partridge in a Pear Tree'
  ].freeze

  DAYS = {
    first: GIFTS[-1], second: GIFTS[-2..], third: GIFTS[-3..],
    fourth: GIFTS[-4..], fifth: GIFTS[-5..], sixth: GIFTS[-6..],
    seventh: GIFTS[-7..], eighth: GIFTS[-8..], ninth: GIFTS[-9..],
    tenth: GIFTS[-10..], eleventh: GIFTS[-11..], twelfth: GIFTS[-12..]
  }.freeze

  def self.opening(ordinal)
    "On the #{ordinal} day of Christmas my true love gave to me:"
  end

  def self.song
    lyrics = []

    DAYS.each do |k, v|
      if k == :first
        lyrics << "#{opening(k)} #{v[4..]}."
      else
        lyrics << "#{opening(k)} #{v.join(', ')}."
      end
    end

    lyrics.join("\n\n") + "\n"
  end
end
