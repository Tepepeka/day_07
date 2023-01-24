require_relative '../lib/stock_picker'

describe "It should return a pair of days representing the min day to buy and the min day to sell. Days start at 0." do

    it "return a pair of days" do
      expect(stock_picker([17,3,6,9,15,8,6,1,10])).to eq([1,4])
    end

end