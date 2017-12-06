require_relative 'day6'

RSpec.describe Day6 do
  describe "#rebalance_memory_banks" do
    it "rebalances the memory banks" do
      memory_banks = Day6.new.rebalance_memory_banks([0, 2, 7, 0])
      expect(memory_banks).to eq([2, 4, 1, 2])

      memory_banks = Day6.new.rebalance_memory_banks(memory_banks)
      expect(memory_banks).to eq([3, 1, 2, 3])

      memory_banks = Day6.new.rebalance_memory_banks(memory_banks)
      expect(memory_banks).to eq([0, 2, 3, 4])

      memory_banks = Day6.new.rebalance_memory_banks(memory_banks)
      expect(memory_banks).to eq([1, 3, 4, 1])

      memory_banks = Day6.new.rebalance_memory_banks(memory_banks)
      expect(memory_banks).to eq([2, 4, 1, 2])
    end
  end
end