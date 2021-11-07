# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../../SearchingAlgorithms/binarySearch'

describe 'BinarySearch' do
  it 'test' do
    array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    x = 10
    result = BinarySearch.new.binary_search(array, x)
    assert result.eql? 9
  end
end
