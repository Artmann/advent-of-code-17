class Day3
  def get_position(n)
    k = ((Math.sqrt(n.to_f) - 1) / 2).ceil
    t = 2 * k + 1
    m = t ** 2
    t = t - 1

    return [k - (m - n), -k] if n >= m - t

    m -= t
    return [-k, -k + (m - n)] if n >= m - t

    m -= t
    return [-k + (m - n), k] if n >= m - t

    return [k, k - (m - n - t)]
  end

  def distance(a, b)
    (a.first - b.first).abs + (a.last - b.last).abs
  end

  def stress_test(n)
    memory = {}
    memory[[0,0]] = 1

    directions = [
      [1, 0],
      [1, 1],
      [0, 1],
      [-1, 1],
      [-1, 0],
      [-1, -1],
      [0, -1],
      [1, -1],
    ]

    n.times do |i|
      next if i <= 1

      pos = get_position(i)
      next unless memory[pos] == nil

      value = directions.map { |d| memory[add pos, d] || 0}.sum
      memory[pos] = value

      return value if value > n
    end
  end

  private
  def add(a, b)
    return [a.first + b.first, a.last + b.last]
  end
end