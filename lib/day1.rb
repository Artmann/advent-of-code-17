class Day1
  def sum_of_number_with_identical_neighbour(numbers = [], offset = 1)
    numbers
      .select
      .with_index { |v, i| v == numbers.cycle.first(i + offset + 1).last }
      .sum
  end
end