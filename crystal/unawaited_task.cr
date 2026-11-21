require "wait_group"

store = [] of Int32
wg = WaitGroup.new
wg.spawn do
  sleep 50.milliseconds
  store << 1
end
puts store.size # CONTROL! wg.wait; puts store.size
