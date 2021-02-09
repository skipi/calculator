require "calculator/adder"

RSpec.describe Calculator::Adder do
  it "sums arguments #1" do
    result = Calculator::Adder.run(1, 2)
    expect(result).to eq(3)
  end

  it "sums arguments #2" do
    result = Calculator::Adder.run(1, 2)
    expect(result).to eq(-1)
  end
end
