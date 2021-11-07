require 'spec_helper'
require './Array/reversal'

describe Reversal do
    it 'Test' do
        array = [121, 232, 33, 43, 5]
        arr = [33, 43, 5, 121, 232]
        revers = Reversal.new.revers_array(array)
        expected(arr).eql?(revers)
    end
end