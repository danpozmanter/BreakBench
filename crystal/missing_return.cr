def grade(score : Int32) : String
  return "pass" if score > 50
  return "fail" if score < 50
  # CONTROL! "borderline"
end

puts grade(ARGV[0].to_i)
