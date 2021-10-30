
require 'time'

year = 1998
day = 3
month = 12
current_date = Time.now
current_day = current_date.day
current_date_month = current_date.month
current_date_year = current_date.year

birthday_year = current_date_month < month ?  current_date_year - year - 1 : current_date_year - year
birthday_month = current_date_month < month ?  current_date_month - month + 12 : current_date_month - month
birthday_day = current_day > day ? current_day - day : current_day - day  + 30

puts "Anos: #{birthday_year} Meses: #{birthday_month} Dias: #{birthday_day}"




