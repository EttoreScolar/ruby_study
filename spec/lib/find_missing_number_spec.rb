# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../../SearchingAlgorithms/findMissingNumber'

describe 'FindMissingNumber' do
  it 'succeeds' do
    arr = [1, 2, 4, 6, 3, 7, 8]
    result = FindMissingNumber.new.find_missing_number arr
    assert result.eql? 5
  end
end
