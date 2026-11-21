struct Config {
mut:
	color string = 'blue'
}

fn main() {
	mut cfg := Config{}
	cfg.colour = 'red' // BREAK!
	cfg.color += ''
	println(cfg.color)
}
