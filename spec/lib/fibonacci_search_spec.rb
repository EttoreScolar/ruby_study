require 'minitest/autorun'
require_relative '../../SearchingAlgorithms/fibonacci_search'
describe 'FibonacciSearch' do
  it 'succeeds' do
    arr = [10, 22, 35, 40, 45, 50, 80, 82, 85, 90, 100, 235]
    result = FibonacciSearch.new.fibonacci_search(arr, 235, 12)
    assert result.eql? 11
  end
end
