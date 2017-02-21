# require "rgfa"
require_relative "/home/avivace/github/rgfa/lib/rgfa.rb"

graph1 = RGFA.from_file("/home/avivace/github/bio-p/ex1.gfa")
graph2 = RGFA.from_file("/home/avivace/github/bio-p/ex2.gfa")
graph3 = RGFA.from_file("/home/avivace/github/bio-p/ex3.gfa")

puts graph1.equals(graph2)
puts graph1.equals(graph3)
puts graph2.equals(graph3)
puts graph3.equals(graph1)