// LEVEL: LANGUAGE

struct KindA {
	Error
}

struct KindB {
	Error
}

fn work(a bool) ! {
	if a {
		return KindA{}
	}
	return KindB{}
}

fn step(a bool) ! {
	work(a) or {
		if err is KindA {
			println('caught A')
			return
		}
		return err
	}
}

fn main() {
	step(true)!
	step(false) or {
		if err is KindB {
			println('passed B')
		}
	}
}
