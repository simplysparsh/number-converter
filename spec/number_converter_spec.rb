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
        1   => 'I',
        2   => 'II',
        3   => 'III',
        4   => 'IV',
        5   => 'V',
        6   => 'VI',
        7   => 'VII',
        8   => 'VIII',
        9   => 'IX',
        10  => 'X',
        11  => 'XI',
        12  => 'XII',
        13  => 'XIII',
        14  => 'XIV',
        15  => 'XV',
        16  => 'XVI',
        17  => 'XVII',
        18  => 'XVIII',
        19  => 'XIX',
        20  => 'XX',
        21  => 'XXI',
        22  => 'XXII',
        30  => 'XXX',
        39  => 'XXXIX',
        40  => 'XL',
        44  => 'XLIV',
        49  => 'XLIX',
        50  => 'L',
        59  => 'LIX',
        60  => 'LX',
        61  => 'LXI',
        77  => 'LXXVII',
        89  => 'LXXXIX',
        90  => 'XC',
        98  => 'XCVIII',
        99  => 'XCIX',
        100 => 'C',

    }.each do |arabic_number, roman_number|
      context "when the input is #{arabic_number}" do
        it "returns #{roman_number}" do
          expect(converter.convert(arabic_number)).to eq roman_number
        end
      end

    end
  end
end