require 'spec_helper'
require 'number_converter'

describe NumberConverter do
  it "can instantiate new objects" do
    expect(NumberConverter.new).to_not be(nil)
  end
end
