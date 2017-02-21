# require "rgfa"
require_relative "/home/avivace/github/rgfa/lib/rgfa.rb"
require "test/unit"
include Test::Unit::Assertions

graph1 = RGFA.from_file("/home/avivace/github/bio-p/ex1.gfa")
graph2 = RGFA.from_file("/home/avivace/github/bio-p/ex2.gfa")
graph3 = RGFA.from_file("/home/avivace/github/bio-p/ex3.gfa")

puts graph1.equals(graph2)
puts graph1.equals(graph3)
puts graph2.equals(graph3)
puts graph3.equals(graph1)

gfa1 = RGFA.new
gfa2 = RGFA.new

lines = ["H\tVN:Z:1.0",
		 "S\t1\tAAAA",
		 "S\t2\tBBBB",
		 "S\t3\tCCCC",
		 "L\t2\t+\t3\t+\t0M",
		 "L\t2\t+\t1\t+\t0M"]
lines.each {|l| gfa1 << l}

lines2 = ["H\tVN:Z:1.0",
		 "S\t2\tBBBB",
		 "S\t3\tCCCC",
		 "S\t1\tAAAA",
		 "L\t2\t+\t1\t+\t0M",
		 "L\t2\t+\t3\t+\t0M"]
lines2.each {|l| gfa2 << l}

puts gfa1.equals(gfa2)
assert_equal(gfa1.equals(gfa2), true)