require 'grab'

describe "#grab!" do
  let(:h) { {a: 1, b: 2} }

  it "fetches a single value from the hash" do
    h.grab!(:a).should == [1]
  end

  it "fetches multiple values from the hash" do
    h.grab!(:a, :b).should == [1,2]
  end

  it "raises a KeyError for nonexistent keys" do
    expect do
      h.grab!(:a, :b, :c)
    end.to raise_error(KeyError, "key not found: :c")
  end
end

describe "#grab" do
  let(:h) { {a: 1, b: 2} }

  it "requests a single value from the hash" do
    h.grab(:a).should == [1]
  end

  it "requests multiple values from the hash" do
    h.grab(:a, :b).should == [1,2]
  end

  it "returns nil for nonexistent keys" do
    h.grab(:a, :b, :c).should == [1,2,nil]
  end
end