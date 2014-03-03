extern mod std;

fn parse_argv(args: ~[~str]) -> (int, int) {
	//let mat = [mut [mut 0u8, ..20], ..20];
	let mut mat = [[0u8, ..20], ..20];
	let mut c = 0;
	for arg in args.iter() {
		println! ("{}", *arg);
		c = c + 1;
	};
	(0, c)
}

fn solve(mat: &mut [[u8, ..20], ..20], sz: int) {
}

fn solveV() {
}

fn solveP() {
}

fn main() {
	let args : ~[~str] = ::std::os::args();
	println!("{}",args[1]);
	parse_argv(args);
}
