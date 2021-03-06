require 'open-uri'
require 'nokogiri'

class KeywordSearch

	URL = 'https://torrentz.eu/feedA?f=' #date-sorted
	#	seeder-sorted = 'https://torrentz.eu/feed?q='
	# supplemental feeds: 
	# RSS: http://www.torrenthound.com/rss.php?s=fury%202014 
	# RSS: http://bitsnoop.com/search/all/fury%202014/a/d/1/?fmt=rss (a/d/2 for page 2, etc.)
	# RSS: http://extratorrent.to/rss?&search=%22Fury%202014
	# rich media (img, info, etc): https://yts.re/api/v2/list_movies.json?sort_by=date_added&limit=10&query_term=cuban%20fury
	# check: https://yts.re/api
	def initialize(searchstring)
		@url 	= URL  + searchstring.split(' ').join('%20')
	end

	def results
		begin
			Timeout::timeout(1.70) do
				@data = Nokogiri::XML(open(@url))
			end
			print "Connect #1: torrentz\t"
		rescue
			url = 'https://kickass.to/usearch/' + @url[/(?<==).*/] + '/?rss=1'
			puts "#2 switch: kickass"
			@data = Nokogiri::XML(open(url))
		end	
		if @data
			@data.xpath('//channel/item')[0..9]
		else
			url = 'https://www.monova.org/rss.php?type=search&term=' + @url[/(?<==).*/]
			puts "#3 switch: monova"
			@data = Nokogiri::XML(open(url))
			@data.xpath('//channel/item')[0..9]
		end
	end

end