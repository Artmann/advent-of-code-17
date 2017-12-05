require_relative 'day4'

RSpec.describe Day4 do
  describe "#is_valid_passphrase?" do
    it "returns false if the passphrase contains duplicate words" do
      expect(Day4.new.is_valid_passphrase? "aa bb cc dd aa").to eq(false)
      expect(Day4.new.is_valid_passphrase? "aa rr bb rr dd qq").to eq(false)
    end

    it "returns true if the passphrase does not contain duplicate words" do
      expect(Day4.new.is_valid_passphrase? "aa bb cc dd ee").to eq(true)
      expect(Day4.new.is_valid_passphrase? "aa bb cc dd aaa").to eq(true)
    end

    describe "#is_valid_super_secure_passphrase?" do
      it "returns false if any words are anagrams of eachother" do
        expect(Day4.new.is_valid_super_secure_passphrase? "abcde xyz ecdab").to eq(false)
        expect(Day4.new.is_valid_super_secure_passphrase? "oiii ioii iioi iiio").to eq(false)
      end

      it "returns true if there is no matching anagrams" do
        expect(Day4.new.is_valid_super_secure_passphrase? "abcde fghij").to eq(true)
        expect(Day4.new.is_valid_super_secure_passphrase? "a ab abc abd abf abj").to eq(true)
        expect(Day4.new.is_valid_super_secure_passphrase? "iiii oiii ooii oooi oooo").to eq(true)
      end
    end
  end
end