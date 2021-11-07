# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../../Array/reversal'
describe Reversal do
  before do
    # Do nothing
  end

  after do
    # Do nothing
  end

  it 'succeeds' do
    array = [121, 232, 33, 43, 5]
    arr = [232, 33, 43, 121, 5]
    revers = Reversal.new.right_rotate(array, 3, array.size - 1)
    assert arr.eql? revers
  end
end
