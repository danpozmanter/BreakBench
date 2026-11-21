// LEVEL: LANGUAGE

struct Ledger {
mut:
	debits  int
	credits int
}

fn post(shared l Ledger) {
	for _ in 0 .. 1000 {
		lock l {
			l.debits++
			l.credits++
		}
	}
}

fn main() {
	shared ledger := Ledger{}
	a := spawn post(shared ledger)
	b := spawn post(shared ledger)
	a.wait()
	b.wait()
	println(ledger.debits) // REJECT!
	rlock ledger {
		println('${ledger.debits} ${ledger.credits}')
	}
}
