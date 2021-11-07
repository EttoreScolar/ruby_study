# frozen_string_literal: true

require 'date'

arr = %w[22/4/1233 4/12/233 1/3/633 23/5/56645]
query = ['4/4/34234234']

class FindFutureDate
  def convert_array_to_date(array)
    (0..(array.size - 1)).each do |i|
      array[i] = (Date.parse array[i]).strftime('%Q')
    end
    array.sort
  end

  def search_next_closest_date(array_source, array_with_date)
    return -1 if array_with_date.max > array_source.max

    array_temp = []
    array_final = []
    (0..(array_with_date.size - 1)).each do |i|
      (0..(array_source.size - 1)).each do |j|
        array_temp[j].push (array_with_date[i] - array_source[j]).abs
      end
      array_final.push array_temp.min
      array_temp.clear
    end
    array_final
  end
end

source = FindFutureDate.new.convert_array_to_date arr
target = FindFutureDate.new.convert_array_to_date query

puts FindFutureDate.new.search_next_closest_date source, target
