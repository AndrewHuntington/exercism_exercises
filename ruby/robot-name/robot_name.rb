# frozen_string_literal: true

# Create a Robot object with a unique name
# ex. "AB123"
class Robot
  attr_reader :name

  def initialize
    @name = create_name
    @@robot_names.include?(@name) ? reset : @@robot_names << @name
  end

  def create_name
    name = String.new

    2.times do
      name += ('A'..'Z').to_a.sample
    end

    3.times do
      name += rand(10).to_s
    end

    name
  end

  def reset
    old_name = @name
    new_name = create_name

    @@robot_names.include?(new_name) ? reset : @name = new_name
    @@robot_names.delete(old_name)
    @@robot_names << @name
  end

  def self.forget
    @@robot_names = []
  end
end