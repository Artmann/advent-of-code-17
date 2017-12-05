require_relative 'day5'

RSpec.describe Day5 do
  describe "#strange_jump" do
    it "it increases the index with the current jump instruction" do
      index, list = Day5.new.strange_jump(2, [0, 1, 5, 2, 1])
      expect(index).to eq(7)
      index, list = Day5.new.strange_jump(4, [0, 1, 2, 3, -7])
      expect(index).to eq(-3)
    end

    it "it increases the value at the index by one" do
      index, list = Day5.new.strange_jump(1, [0, 1, 2])
      expect(list).to eq([0, 2, 2])
      index, list = Day5.new.strange_jump(2, [0, 1, -7])
      expect(list).to eq([0, 1, -6])
    end
  end

  describe "#stranger_jump" do
    it "it increases the index with the current jump instruction" do
      index, list = Day5.new.stranger_jump(2, [0, 1, 5, 2, 1])
      expect(index).to eq(7)
      index, list = Day5.new.stranger_jump(4, [0, 1, 2, 3, -7])
      expect(index).to eq(-3)
    end

    it "it increases the value at the index by one if the offset is less than 3 otherwise decrease it by one" do
      index, list = Day5.new.stranger_jump(1, [0, 4, 2])
      expect(list).to eq([0, 3, 2])
      index, list = Day5.new.stranger_jump(2, [0, 1, -7])
      expect(list).to eq([0, 1, -6])
    end
  end
end