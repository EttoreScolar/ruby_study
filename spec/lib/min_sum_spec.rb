require 'minitest/autorun'
require_relative '../../GreedyAlgorithms/minSum'
describe MinSum do
  before do
    # Do nothing
  end

  after do
    # Do nothing
  end

  it 'succeeds' do
    array = [1, 2, 3, 4, 56, 7, 88, 9]
    result = MinSum.new.min_sum array
    expect(7).eql? result
  end
end
