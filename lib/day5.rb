class Day5
  def strange_jump(index, list)
    offset = list[index]
    list[index] += 1
    index += offset

    return [index, list]
  end

  def stranger_jump(index, list)
    offset = list[index]
    list[index] += (offset >= 3 ? -1 : 1)
    index += offset

    return [index, list]
  end
end