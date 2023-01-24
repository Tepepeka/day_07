require_relative '../lib/bubble_sort'

describe "it return an array sorted by min value to max value with bubble method" do

    it "sort an array by min value to max value" do
      expect(bubble_sort([4,3,78,2,0,2])).to eq([0,2,2,3,4,78])
    end

    it "sort an array by min value to max value" do
        expect(bubble_sort([5,3,78,2,92,0,2])).to eq([0,2,2,3,5,78,92])
    end

end