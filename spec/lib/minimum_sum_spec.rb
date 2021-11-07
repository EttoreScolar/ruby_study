# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../../GreedyAlgorithms/minimumSum'

describe MinimumSum do
  before do
    # Do nothing
  end

  after do
    # Do nothing
  end


  it 'succeeds' do
    a = [2, 3, 4, 5, 4]
    b = [3, 4, 2, 3, 2]
    n = a.size - 1
    k = 3
    result = MinimumSum.new.min_product a, b, n, k
    assert 25.eql? result
  end

end
