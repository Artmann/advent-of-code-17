require_relative 'day8'

RSpec.describe Day8 do
  describe "compute_instructions" do
    it "increases and decreseas registries" do
      day8 = Day8.new

      day8.compute_instructions do
        inc :b, 5 if get(:a) > 1
        inc :a, 1 if get(:b) < 5
        dec :c, -10 if get(:a) >= 1
        inc :c, -20 if get(:c) == 10
      end

      expect(day8.highest_register).to eq(1)
      expect(day8.highest_register_value).to eq(10)
    end
  end
end