class HighScores
  attr_reader :scores

  def initialize(scores)
    @scores = scores
  end

  def latest
    scores.last
  end

  def personal_best
    scores.max
  end

  def personal_top_three
    personal_top(3)
  end

  def personal_top(num)
    scores.max(num).sort.reverse
  end
end
