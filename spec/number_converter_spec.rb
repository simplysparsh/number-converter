require 'spec_helper'
require 'number_converter'

describe NumberConverter do
  let(:converter) { NumberConverter.new }

  context "when the input is 0" do
    it "returns an empty string" do
      expect(converter.convert(0)).to eq("")
    end
  end
end
