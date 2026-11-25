import std;

fn main() {
    var grid = default<i64[3][3]>();
    grid[0][0] = 1;
    var ones = 0;
    for r in 3 {
        for c in 3 {
            if grid[r][c] == 1 { ones += 1; }
        }
    }
    print(ones);
}
