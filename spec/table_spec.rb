require 'spec_helper'

describe "Table" do
  it "validates rows count" do
    expect { Table.new [1,2,3], [[1,2,3]] }.to raise_error ArgumentError
  end

  it "validates columns count" do
    expect { Table.new [1,2,3], [[1,2,3], [2,3], [1]] }.to raise_error ArgumentError
  end

  it "passes valid input" do
    expect { Table.new [1,2,3], [[4,5,6], [7,8,9], [10,11,12]]}.not_to raise_error
  end
end
