# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../../Date/calculateAge'

describe CalculateAge do
  before do
    # Do nothing
  end

  after do
    # Do nothing
  end

  it 'succeeds' do
    result = { day: 4, month: 11, year: 22 }
    calculate_age = CalculateAge.new.calculate_age(1998, 3, 12)
    expect(result).eql? calculate_age
  end
end
