require 'spec_helper'
require 'number_converter'

describe NumberConverter do
  let(:converter) { NumberConverter.new }

  describe '#convert' do
    context "when the input is 0" do
      it "returns an empty string" do
        expect(converter.convert(0)).to eq("")
      end
    end

    {
        1 => 'I',
        2 => 'II',
    }.each do |input, expected|
       context "For the input #{input}" do
        it "returns #{expected}" do
          expect(converter.convert(input)).to eq expected
        end
      end

    end
  end
end