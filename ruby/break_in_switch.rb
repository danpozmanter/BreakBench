def total_until_stop(codes)
  total = 0
  codes.each do |code|
    case code
    when 0
      break
    else
      total += code
    end
  end
  total
end

puts total_until_stop(ARGV.map(&:to_i))
