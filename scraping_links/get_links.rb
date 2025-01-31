# require 'mechanize'

# mechanize = Mechanize.new


# page = mechanize.get("https://www.bubblypet.com/category/dogs/")


# page.links.uniq.each do |link|
#   File.open("petlooper.txt", 'a') { |file| file.write(link.href + "\n")} 
# end



# 8.upto(154) do |i|
#   page = mechanize.get("https://www.virtualvocations.com/blog/page/#{i}/")


#   page.links.uniq.each do |link|
#     File.open("joblooperlinks.txt", 'a') { |file| file.write(link.href + "\n")} 
#   end
# end


require 'nokogiri'
require 'open-uri'

# 2.upto(62) do |i|
  document = Nokogiri::HTML(URI::open("https://www.youtube.com/teded/videos?view=0&sort=p&flow=grid").read)

  # links = document.search('a').map do |tag|
  #   case tag.name.downcase
  #   when 'a'
  #     #tag["href"]
  #     #tag.css(".entry-title-link").text
  #   end
  # end 

  # sophia-lee site
  # titles = document.css('.entry-title-link').map do |node|
  #   node.text
  # end

  # mashable site
  titles = document.css(".yt-simple-endpoint").map do |node|
    node.text
  end

  # title = document.search('title').text

  # links
  #File.write("titles_sample.txt", links.join("\n"), mode: 'a')

  # titles
  File.write("ted_ed_popular_video_titles.txt", titles.join("\n\n"), mode: 'a')
# end

