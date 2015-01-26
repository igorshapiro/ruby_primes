require 'spec_helper'

describe 'Primes' do
  describe "get(n)" do
    it "treats n as 1-based" do
      expect(Primes.get(1)).to eq 2
    end

    it "returns nth prime" do
      expect(Primes.get(100)).to eq 541
    end

    it "validates n > 0" do
      expect {Primes.get(-1)}.to raise_error ArgumentError
      expect {Primes.get(0)}.to raise_error ArgumentError
    end
  end
end
