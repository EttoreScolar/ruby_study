# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../../Array/findThree'

describe FindThree do
  before do
    # Do nothing
  end

  after do
    # Do nothing
  end

  it 'succeeds' do
    arr = [12, 13, 1, 10, 34, 1]
    find_three = FindThree.new.show_3_largest(arr)
    assert ([12, 13, 34]).eql? find_three
  end
end
