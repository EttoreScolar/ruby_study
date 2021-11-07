require 'minitest/autorun'
require_relative '../../SearchingAlgorithms/linearSearch'

describe 'LinearSearch' do
  it 'succeeds' do
    array = [1, 20, 35, 44, 51, 65, 70, 81, 911, 10]
    result = LinearSearch.new.linear_search array, 10
    assert result.eql? 9
  end
end
