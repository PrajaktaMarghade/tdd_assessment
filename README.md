# tdd_assessment

git clone https://github.com/PrajaktaMarghade/tdd_assessment.git
cd tdd_assessment
bundle
rspec

irb
require './string_calculator'
calculator = StringCalculator.new
calculator.add("1,2") # => 3
calculator.add("//;\n1;2") # => 3