system("sh", "-c", "exit 3", exception: true) # CONTROL! unless system("sh", "-c", "exit 3") then puts "backup failed"; exit end
puts "backed up"
