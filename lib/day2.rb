class Day2
  def checksum(rows, &strategy)
    rows.map(&strategy).sum
  end
end