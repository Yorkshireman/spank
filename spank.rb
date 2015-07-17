puts "What year were you born in?"

year_of_birth = gets.chomp.to_i

puts "What month (as a number eg for April, write 4)?"

month_of_birth = gets.chomp.to_i

puts "What day (as a number)?"

day_of_birth = gets.chomp.to_i

date_of_birth = Time.mktime(year_of_birth, month_of_birth, day_of_birth)

years = Time.now.year - date_of_birth.year

def born_after_today?(dob)
	pseudo_dob = Time.mktime(Time.new.year, dob.month, dob.day)
	pseudo_dob > Time.new
end

puts "\n"

if born_after_today?(date_of_birth)
	puts "SPANK!!!\n" * (years-1)
	puts "\n#{years-1} spanks for you then!\n"
else
	puts "SPANK!!!\n" * years
	puts "\n#{years} spanks for you then!\n"
end
