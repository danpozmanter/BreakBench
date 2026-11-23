struct ValidationError {
	Error
	field string
}

fn (e ValidationError) msg() string {
	return 'invalid ${e.field}'
}

fn validate(name string) ! {
	mut problem := ?ValidationError(none)
	if name == '' {
		problem = ValidationError{
			field: 'name'
		}
	}
	if p := problem {
		return p
	}
}

fn main() {
	validate('ada') or {
		println('invalid')
		return
	}
	println('valid')
}
