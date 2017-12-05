require_relative 'day2'

RSpec.describe Day2 do
  describe "#checksum" do
    it "it caclulates the correct checksum" do
      expect(
        Day2.new.checksum([
          [5, 1, 9, 5],
          [7, 5, 3],
          [2, 4, 6, 8],
        ]) { |row| row.max - row.min }
      ).to eq(18)
    end
  end
end