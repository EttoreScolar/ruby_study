# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../../GreedyAlgorithms/maximizeSum'

describe MaximizeSum do
  before do
    # Do nothing
  end

  after do
    # Do nothing
  end

  it 'succeeds' do
    array = [-2, 0, 5, -1, 2]
    result = MaximizeSum.new.maximize_sum array, 4
    expect(10).eql? result
  end
end
