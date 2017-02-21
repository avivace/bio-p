  def equals(graph2)
    g1_links = Array.new
    g2_links = Array.new

    self.links.each { |x| g1_links.insert(0, x.to_s) }
    g1_links.sort!
    graph2.links.each { |x| g2_links.insert(0, x.to_s) }
    g2_links.sort!

    g1_segments = Array.new
    g2_segments = Array.new

    self.segments.each { |x| g1_segments.insert(0, x.to_s) }
    g1_segments.sort!
    graph2.segments.each { |x| g2_segments.insert(0, x.to_s) }
    g2_segments.sort!

    if g1_segments == g2_segments && g1_links == g2_links
      return true
    else
      return false
    end
  end