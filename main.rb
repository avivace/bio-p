require "rgfa"

graph1 = RGFA.from_file(ARGV[0])
graph2 = RGFA.from_file(ARGV[1])

g1_links = Array.new
g2_links = Array.new

graph1.links.each { |x| g1_links.insert(0, x.to_s) }
puts g1_links.sort!
graph2.links.each { |x| g2_links.insert(0, x.to_s) }
puts g2_links.sort!

g1_segments = Array.new
g2_segments = Array.new

graph1.segments.each { |x| g1_segments.insert(0, x.to_s) }
puts g1_segments.sort!
graph2.segments.each { |x| g2_segments.insert(0, x.to_s) }
puts g2_segments.sort!

if g1_segments == g2_segments && g1_links == g2_links
	puts "The graphs are equivalent"
elsif
	puts "The graphs aren't equivalent"
end