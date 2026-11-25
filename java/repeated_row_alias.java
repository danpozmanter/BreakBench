public class Main {
    public static void main(String[] args) {
        int[][] grid = new int[3][3];
        grid[0][0] = 1;
        int ones = 0;
        for (int[] row : grid) {
            for (int cell : row) {
                if (cell == 1) ones++;
            }
        }
        System.out.println(ones);
    }
}
