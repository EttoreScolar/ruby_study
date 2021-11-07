require 'minitest/autorun'
require_relative '../../Sorting Algorithms/selectSort'

describe 'SelectSort' do
  it 'succeeds' do
    array = [64, 25, 12, 22, 11]
    result = SelectSort.new.select_sort array
    assert [11, 12, 22, 25, 64].eql? result
  end
end
