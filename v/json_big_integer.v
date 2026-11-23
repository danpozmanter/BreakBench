import json

struct Event {
	id i64
}

fn main() {
	event := json.decode(Event, '{"id": 9007199254740993}') or { panic(err) }
	println(event.id)
}
