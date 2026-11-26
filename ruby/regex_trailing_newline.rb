puts(/^[a-z]+$/.match?(ARGV[0]) ? "accepted" : "rejected") # CONTROL! puts(/\A[a-z]+\z/.match?(ARGV[0]) ? "accepted" : "rejected")
