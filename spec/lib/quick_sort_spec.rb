require 'minitest/autorun'
require_relative '../../Sorting Algorithms/quick_sort'

describe 'QuickSort' do
  it 'succeeds' do
    arr = [10, 7, 8, 9, 1, 5]
    result = QuickSort.new.quick_sort(arr, 0, arr.size - 1)
    assert [1, 5, 7, 8, 9, 10].eql? result
  end
end
