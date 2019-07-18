# TODO: Write your test cases here
require 'encrypt'

describe "#encrypt" do
  # test 3 letter shift
  it "test 3 letter shift" do
    actual = encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG")
    expected = "QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD"
    expect(actual).to eq(expected)
  end

  # test if it is a string
   it "test if it is a string" do
    actual = encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG").class
    expected = String
    expect(actual).to eq(expected)
  end

  # test empty string return empty string
    it "test empty string return empty string" do
    actual = encrypt("")
    expected = ""
    expect(actual).to eq(expected)
  end

  # test 3 numbers shift
    it "test 3 numbers shift" do
    actual = encrypt("1 2 3 4 5")
    expected = "-2 -1 0 1 2"
    expect(actual).to eq(expected)
  end

  # test alphanumeric shift
    it "test alphanumeric shift" do
    actual = encrypt("G12 3")
    expected = "D-2-1 0"
    expect(actual).to eq(expected)
  end

  # test special char shift
    it "test alphanumeric shift" do
    actual = encrypt("!@#")
    expected = "specialspecialspecial"
    expect(actual).to eq(expected)
  end
end
