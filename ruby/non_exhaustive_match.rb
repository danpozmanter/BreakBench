COLORS = %i[red green blue].freeze

def name(c)
  case c
  when :red then "red"
  when :green then "green"
  # CONTROL! when :blue then "blue"
  end
end

puts name(COLORS[ARGV[0].to_i]).inspect # CONTROL! puts name(COLORS[ARGV[0].to_i])
