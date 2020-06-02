require "rspec"
require_relative "../lib/pseudo_random_value"

RSpec.describe PseudoRandomValue do
  describe "values" do
    let(:arr_symbols) { [['a', 1, 'b', 9], ['g', 5, 7, 'k'], [0, 3, 'D', 'S']] }
    let(:counter) { arr_symbols[0].length ** arr_symbols.size }
    subject { PseudoRandomValue.new(arr_symbols.reverse) }

    it "first_value" do
      expect(subject.new_value(0)).to eq("#{arr_symbols[0][0]}" +
                                         "#{arr_symbols[1][0]}" +
                                         "#{arr_symbols[2][1]}")
    end

    it "next value" do
      expect(subject.new_value(2)).to eq("#{arr_symbols[0][0]}" +
                                         "#{arr_symbols[1][0]}" +
                                         "#{arr_symbols[2][2]}")
    end

    it "last value" do
      expect(subject.new_value(counter)).to eq("#{arr_symbols[0][0]}" +
                                               "#{arr_symbols[1][0]}" +
                                               "#{arr_symbols[2][0]}")
    end
  end
end
