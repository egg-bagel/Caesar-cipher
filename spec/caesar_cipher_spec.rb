#Tests for Caesar cipher, which takes a string and a shift factor and outputs a modified string.

require "./script.rb"

#Things I need to test my methods for:
#shift_array:
#-Takes an array of letters and returns a different array of letters all shifted by the same number of places
#-Only shifts letters, does not change numbers or punctuation
#-Wraps the cipher from z to a
#-Can take a negative shift number

#orig_caps:
#-Takes two strings, resets the second argument to match the capitalization of the first argument

describe "#shift_array" do
  it "shifts all letters in an array by the same number of places" do
    expect(shift_array(["h", "e", "l", "l", "o"], 4)).to eql(["l", "i", "p", "p", "s"])
  end

  it "shifts letters, but not numbers or punctuation" do
    expect(shift_array(["h", "e", "l", "l", "o", ",", "1", "2", "3"], 5)).to eql(["m", "j", "q", "q", "t", ",", "1", "2", "3"])
  end

  it "wraps the cipher from z to a" do
    expect(shift_array(["x", "y", "l", "o", "p", "h", "o", "n", "e"], 6)).to eql(["d", "e", "r", "u", "v", "n", "u", "t", "k"])
  end

  it "can take a negative number for the shift" do
    expect(shift_array(["h", "i", " ", "t", "h", "e", "r", "e"], -6)).to eql(["b", "c", " ", "n", "b", "y", "l", "y"])
  end
end

describe "#orig_caps" do
  it "takes two arrays that are the same in all but capitalization and matches the second to the first" do
    expect(orig_caps(["o", "R", "i", "G", "i", "N", "a", "L"], ["o", "r", "i", "g", "i", "n", "a", "l"])).to eql(["o", "R", "i", "G", "i", "N", "a", "L"])
  end
end

describe "#caesar_cipher" do
  it "takes a string and returns a string with every letter shifted the same number of places" do
    expect(caesar_cipher("Hello", 5)).to eql("Mjqqt")
  end
end