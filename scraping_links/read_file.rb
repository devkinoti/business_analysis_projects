# file = File.open("rental_manager_titles.txt")
file = File.open("buymerch_print_titles.txt")
file_data = file.readlines.map(&:chomp)


new_title_array = []

file_data.each do |element|
  new_title_array << element.gsub(/\t/,'')
end

clean_title_array = new_title_array.reject { |c| c.empty? }

# p clean_title_array.size


#for buy merch design titles
array_of_index_ranges = [
  0..49,
  50..99,
  100..149,
  150..199,
  200..249,
  250..299,
  300..349,
  350..386
]

array_of_index_ranges.each do |range|
  File.write("./buymerch_titles/#{range.to_s}_buymerch_titles.txt", clean_title_array[range], mode: 'a')
end

# for rental titles
# array_of_index_ranges = [
#   0..49,
#   50..99,
#   100..149,
#   150..199,
#   200..249,
#   250..299,
#   300..349,
#   350..399,
#   400..449,
#   450..499,
#   500..549,
#   550..599,
#   600..649,
#   650..699,
#   700..749,
#   750..799,
#   800..849,
#   850..899,
#   900..949,
#   950..999,
#   1000..1049,
#   1050..1079
# ]

# array_of_index_ranges.each do |range|
#   File.write("./rental_titles/#{range.to_s}_rental_titles.txt", clean_title_array[range], mode: 'a')
# end




