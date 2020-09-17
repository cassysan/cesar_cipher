require './lib/cipher'

describe "#ceasar_cipher" do
  it "correctly shifts positively" do
    expect(ceasar_cipher('a', 2)).to eql('c')
  end

    it "correctly shifts negatively" do
    expect(ceasar_cipher('e', -3)).to eql('b')
  end

    it " loops around from z back to a" do
    expect(ceasar_cipher('y', 2)).to eql('a')
    end

    it ' loops from start to end' do
    expect(ceasar_cipher('b', -3)).to eql('y')
    end

    it "preserves casing of letters" do
    expect(ceasar_cipher("A", 2)).to eql("C")
    end

    it "handles large shifts of letters" do
    expect(ceasar_cipher('What a string!', 135)).to eql("Bmfy f xywnsl!")
    end
end
