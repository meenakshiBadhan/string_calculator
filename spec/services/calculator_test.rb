require 'rails_helper'

RSpec.describe Calculator, type: :service do
  let(:calculator) { Calculator.new }

  describe '#add' do
    it 'returns 0 for empty string' do
      expect(calculator.add("")).to eq(0)
    end
    
    it 'returns the number itself for a single number' do
      expect(calculator.add("1")).to eq(1)
    end
    
    it 'returns sum for two comma-separated numbers' do
      expect(calculator.add("2,4")).to eq(6)
    end
    
    it 'returns sum for multiple comma-separated numbers' do
      expect(calculator.add("1,2,3,4,5,6,7,8")).to eq(36)
    end

    it 'returns sum for numbers separated by newline character' do
      expect(calculator.add("1\n2")).to eq(3)
    end

    it 'returns sum for numbers separated by multiple newline characters' do
      expect(calculator.add("1\n2\n5\n6")).to eq(14)
    end
    
    it 'returns sum for numbers separated by multiple delimiters' do
      expect(calculator.add("1\n2,5\n8")).to eq(16)
    end
    
    it 'returns sum for numbers separated by multiple delimiters' do
      expect(calculator.add("//;\n1;2")).to eq(3)
    end

    it 'returns sum for numbers separated by multiple delimiters' do
      expect(calculator.add("[4/5;\n7,8")).to eq(24)
    end
    
    it 'raises error for a single negative number' do
      expect { calculator.add("2,-4,7") }.to raise_error("negative numbers not allowed -4")
    end
    
    it 'raises error for addition with multiple negative numbers' do
      expect { calculator.add("2,-4,-7,-3") }.to raise_error("negative numbers not allowed -4,-7,-3")
    end

  end
end
