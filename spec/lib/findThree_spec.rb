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
    findThree = FindThree.new.show_3_largest(arr)
    expect([34, 13, 12]).eql? findThree
  end
end
