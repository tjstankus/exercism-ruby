class Matrix
  attr_reader :rows, :columns

  def initialize(data)
    @rows = data.split("\n").map { |s| s.split.map(&:to_i) }
    @columns = @rows.transpose
  end
end
