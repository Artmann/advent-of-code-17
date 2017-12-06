class Day6
  def recycle_memory_until_duplicate_state_is_found(state)
    states = [state]
    counter = 0

    while true do
      state = Day6.new.rebalance_memory_banks(state.clone)
      counter += 1
      return [counter, state] if states.include? state
      states << state
    end
  end

  def rebalance_memory_banks(memory_banks)
    index = memory_banks.find_index(memory_banks.max)
    blocks = memory_banks[index]
    memory_banks[index] = 0

    index += 1
    blocks.times do
      index = 0 if index >= memory_banks.size
      memory_banks[index] += 1
      index += 1
    end

    return memory_banks
  end
end