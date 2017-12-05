require_relative 'day1'

RSpec.describe Day1 do
  describe "#sum_of_number_with_identical_neighbour" do
    it "it sums numbers with identical neighbours" do
      expect(
        Day1.new.sum_of_number_with_identical_neighbour([1,1,2,2])
      ).to eq(3)

      expect(
        Day1.new.sum_of_number_with_identical_neighbour([1,1,1,1])
      ).to eq(4)

      expect(
        Day1.new.sum_of_number_with_identical_neighbour([1,2,3,4])
      ).to eq(0)

      expect(
        Day1.new.sum_of_number_with_identical_neighbour([9,1,2,1,2,1,2,9])
      ).to eq(9)
    end

    it "it sums numbers with identical neighbours with a custom offset" do
      expect(
        Day1.new.sum_of_number_with_identical_neighbour([1,2,1,2], 2)
      ).to eq(6)

      expect(
        Day1.new.sum_of_number_with_identical_neighbour([1,2,2,1], 2)
      ).to eq(0)

      expect(
        Day1.new.sum_of_number_with_identical_neighbour([1,2,3,4,2,5], 3)
      ).to eq(4)

      expect(
        Day1.new.sum_of_number_with_identical_neighbour([1,2,3,1,2,3], 3)
      ).to eq(12)

      expect(
        Day1.new.sum_of_number_with_identical_neighbour([1,2,1,3,1,4,1,5], 4)
      ).to eq(4)
    end
  end
end