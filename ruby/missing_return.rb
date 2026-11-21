def grade(score)
  return "pass" if score > 50
  return "fail" if score < 50
end

puts grade(ARGV[0].to_i).inspect
