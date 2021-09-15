require '../caesar_cipher.rb'

describe "caesar_cipher" do
    it "it should shift the characters properly" do
        expect(caesar_cipher("abcdefghijklmnopqrstuvwxyz", 3)).to eql("defghijklmnopqrstuvwxyzabc")
    end

    it "it should only shift alphabets" do
        expect(caesar_cipher("What a string!", 5)).to eql("Bmfy f xywnsl!")
    end

    it "the case of the character should retain after the shift" do
        expect(caesar_cipher("WHAT string", 5)).to eql("BMFY xywnsl")
    end
end