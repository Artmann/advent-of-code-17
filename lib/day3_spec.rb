require_relative 'day3'

RSpec.describe Day3 do
  describe "#get_position" do
    it "returns the position for a value" do
      expect(Day3.new.get_position 1).to eq([0, 0])
      expect(Day3.new.get_position 12).to eq([2, 1])
      expect(Day3.new.get_position 15).to eq([0, 2])
      expect(Day3.new.get_position 19).to eq([-2, 0])
      expect(Day3.new.get_position 22).to eq([-1, -2])
      expect(Day3.new.get_position 23).to eq([0, -2])
    end
  end

  describe "#distance" do
    it "returns the manhattan distance between to coordinates" do
      expect(Day3.new.distance [0, 0], [0, 3]).to eq(3)
      expect(Day3.new.distance [-4, 2], [0, 3]).to eq(5)
      expect(Day3.new.distance [4, -1], [0, 3]).to eq(8)
      expect(Day3.new.distance [7, 12], [0, 0]).to eq(19)
    end
  end
end