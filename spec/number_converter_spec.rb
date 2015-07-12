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
        1  => 'I',
        2  => 'II',
        3  => 'III',
        4  => 'IV',
        5  => 'V',
        6  => 'VI',
        7  => 'VII',
        8  => 'VIII',
        9  => 'IX',
        10 => 'X',
    }.each do |arabic_number, roman_number|
      context "when the input is #{arabic_number}" do
        it "returns #{roman_number}" do
          expect(converter.convert(arabic_number)).to eq roman_number
        end
      end

    end
  end
end