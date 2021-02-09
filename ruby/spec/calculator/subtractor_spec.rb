require "calculator/subtractor"

RSpec.describe Calculator::Subtractor do
  it "subtracts arguments #1" do
    result = Calculator::Subtractor.run(1, 2)
    expect(result).to eq(-1)
  end

  it "subtracts arguments #2" do
    result = Calculator::Subtractor.run(1, 2)
    expect(result).to eq(3)
  end
end
