class Multiples
  attr_accessor :limit
  def initialize(limit)
    @limit = limit
  end

  def collect_multiples
    (1...@limit).to_a.select{ |num| num % 3 == 0 || num % 5 == 0 }
  end

  def sum_multiples
    collect_multiples.reduce(:+)
  end
end
