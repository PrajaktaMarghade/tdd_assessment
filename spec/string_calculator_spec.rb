require_relative '../string_calculator'

RSpec.describe StringCalculator do
  let(:calculator) { StringCalculator.new }

  describe "#add" do
    context "when the input is empty" do
      it "returns 0" do
        expect(calculator.add("")).to eq(0)
      end
    end
  end
end    