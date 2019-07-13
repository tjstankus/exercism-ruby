class Acronym
  def self.abbreviate(long_name)
    long_name.split(" ").map { |word| word.chars.first.capitalize }.join
  end
end
