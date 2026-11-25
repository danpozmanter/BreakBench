type Counter = ref object
  count: int

proc increment(c: Counter) =
  inc c.count

proc runTwice(f: proc ()) =
  f()
  f()

let counter = Counter()
runTwice(counter.increment) # CONTROL! runTwice(proc () = counter.increment)
echo counter.count
