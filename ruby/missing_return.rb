def grade(score)
  return "pass" if score > 50
  return "fail" if score < 50
  # CONTROL! "borderline"
end

puts grade(ARGV[0].to_i).inspect # CONTROL! puts grade(ARGV[0].to_i)
