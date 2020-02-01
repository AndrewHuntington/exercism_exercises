class HighScores
  attr_accessor :scores

  def initialize(scores)
    @scores = scores
  end

  def latest
    @scores.last
  end

  def personal_best
    @scores.sort.last
  end

  def personal_top_three
    @scores.sort { |a, b| b <=> a }[0..2]
  end

  def latest_is_personal_best?
    if latest == personal_best
      return true
    end

    false
  end
end
