class Matrix
  attr_reader :data, :table

  def initialize(data)
    @data = data
    @table = init_table
  end

  def rows
    table
  end

  def columns
    table.transpose  
  end

  private

  def init_table
    data                       # "1 2\n10 20"
      .split("\n")             # ["1 2", "10 20"]
      .map { |row| row.split } # [["1", "2"], ["10", "20"]]
      .tap do |a|              # transform strings to integers
        a.each_with_index do |row, i|
          row.each_with_index do |_, j|
            a[i][j] =a[i][j].to_i
          end
        end
      end
  end
end
