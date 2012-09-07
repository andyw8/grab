require 'grab'

describe "#grab" do
  let(:h) { {a: 1, b: 2} }

  it "fetches a single value from the hash" do
    h.grab(:a).should == [1]
  end

  it "fetches multiple values from the hash" do
    h.grab(:a, :b).should == [1,2]
  end

  it "raises a KeyError for nonexistent keys" do
    expect do
      h.grab(:a, :b, :c)
    end.to raise_error(KeyError, "key not found: :c")
  end
end

describe "#values" do
  let(:h) { {a: 1, b: 2} }

  it "retains the original behaviour of Hash#values" do
    h.values.should == [1,2]
  end

  it "returns multiple values from the hash" do
    h.values(:a, :b).should == [1,2]
  end

  it "returns nil for nonexistent keys" do
    h.values(:a, :b, :c).should == [1,2,nil]
  end
end