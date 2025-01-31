
File.foreach("links_2.txt") { |line| File.open("line_no_pinterest.txt", 'a') { |file| file.write(line.match?() )} }

File.foreach("link_test.txt") { |line| File.open("line_methods.txt", 'a') { |file| file.write(line.methods.sort.join("\n") )}}