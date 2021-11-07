require 'minitest/autorun'
require_relative '../../Sorting Algorithms/mergeSort'

describe 'MergeSort' do
  it 'succeeds' do
    array = [12, 11, 13, 5, 6, 7]
    result = MergeSort.new.sort array, 0, array.size - 1
    assert [5, 6, 7, 11, 12, 13].eql? result
  end
end
