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
    arr = [33, 43, 5, 121, 232]
    revers = Reversal.new.revers_array(array, 3, array.size)
    expect(arr).eql? revers
  end
end
