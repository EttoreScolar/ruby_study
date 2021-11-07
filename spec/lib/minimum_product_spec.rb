require 'minitest/autorun'
require_relative '../../GreedyAlgorithms/minimumProduct'
describe MinimumProduct do
  before do
    # Do nothing
  end

  after do
    # Do nothing
  end

  it 'succeeds' do
    array = [-1, -1, -2, 4, 3]
    result = MinimumProduct.new.minimum_product array
    assert -24.eql? result
  end
end
