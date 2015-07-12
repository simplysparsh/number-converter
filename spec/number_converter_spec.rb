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

    # I wish to comment about this hash.
    # That means I could make it more expressive. What to do?
    {
        1 => 'I',
        2 => 'II',
        3 => 'III',
        4 => 'IV',
        5 => 'V',
        6 => 'VI',
        7 => 'VII',
    }.each do |input, expected|
      context "when the input is #{input}" do
        it "returns #{expected}" do
          expect(converter.convert(input)).to eq expected
        end
      end

    end
  end
end