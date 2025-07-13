require 'rails_helper'

RSpec.describe Calculator, type: :service do
  let(:calculator) { Calculator.new }

  describe '#add' do
    it 'returns 0 for empty string' do
      expect(calculator.add("")).to eq(0)
    end
  end
end
