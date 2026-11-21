struct Config
  getter timeout : Int32
  getter retries : Int32

  def initialize(@timeout : Int32, @retries : Int32)
  end
end

c = Config.new(timeout: 5, retries: 3)
partial = Config.new(timeout: 5) # BREAK!
puts "#{c.timeout} #{c.retries}"
