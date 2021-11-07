require 'minitest/autorun'
require_relative '../../SearchingAlgorithms/jumpSearch'
describe 'JumpSearch' do
  it 'succeeds' do
    array = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610]
    result = JumpSearch.new.jump_search array, 55
    assert result.eql? 10
  end
end
