require_relative '../lib/caesar_cipher'

describe "it encrypt a text with a key" do

    it "encrypt a text with a key" do
      expect(caesar("what a stringz!",5)).to eq("bmfy f xywnsle!")
    end

    it "encrypt a text with a key" do
        expect(caesar("wHat a striNgz!",-5)).to eq("rCvo v nomdIbu!")
    end
  
    it "encrypt a text with a key" do
        expect(encrypt("what a stringz!",5)).to eq("bmfy f xywnsle!")
    end

    it "encrypt a text with a key" do
        expect(encrypt("wHat a striNgz!",-5)).to eq("rCvo v nomdIbu!")
    end

end


describe "it decrypt a text with a key" do

      it "decrypt a text with a key" do
        expect(decrypt("bmfy f xywnsl",5)).to eq("what a string")
    end

    it "decrypt a text with a key" do
        expect(decrypt("bMfy f xyWnsl!!",-5)).to eq("gRkd k cdBsxq!!")
    end

end