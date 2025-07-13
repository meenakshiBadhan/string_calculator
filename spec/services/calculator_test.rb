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
  end
end
