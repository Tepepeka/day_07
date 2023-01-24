require_relative '../lib/multiples'

describe "is multiple of 3 or 5" do

    it "find if current number is multiple of 3 or 5" do
      expect(is_multiple_of_3_or_5?(3)).to eq(true)
    end

    it "find if current number is multiple of 3 or 5" do
        expect(is_multiple_of_3_or_5?(51)).to eq(true)
    end

    it "find if current number is multiple of 3 or 5" do
        expect(is_multiple_of_3_or_5?(64)).to eq(false)
    end

end

describe "do sum of 3 or 5 multiple" do

    it "it sum the multiple of 3 or 5" do
      expect(sum_of_3_or_5_multiples(10)).to eq(23)
    end

    it "it sum the multiple of 3 or 5" do
        expect(sum_of_3_or_5_multiples(11)).to eq(33)
      end

    it "it sum the multiple of 3 or 5" do
        expect(sum_of_3_or_5_multiples(0)).to eq(0)
    end

end