fn main() {
    let mut grid = vec![vec![0; 3]; 3];
    grid[0][0] = 1;
    println!("{}", grid.iter().flatten().filter(|&&cell| cell == 1).count());
}
