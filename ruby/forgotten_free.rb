class Rec
  attr_reader :data

  def initialize
    @data = "\x01".b * 4096
  end
end

n = ARGV[0].to_i
seen = 0
n.times do
  rec = Rec.new
  seen += rec.data.getbyte(0)
end
puts(seen == n ? "done" : "lost")
