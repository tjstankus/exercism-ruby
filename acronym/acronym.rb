class Acronym
  def self.abbreviate(long_name)
    pre_process(long_name).map { |word| word.chars.first.capitalize }.join
  end

  def self.pre_process(long_name)
    long_name.gsub("-", " ").split(" ")
  end
end
