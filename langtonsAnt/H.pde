/*
 * Helpfunction Class (static)
 */
 
public static class H {
  // modulo algorithm that also works for negative numbers!
  public static int mod(int value, int mod) {
    value = value % mod;
    if (value<0) {
      value += mod;
    }
    return value;
  }
  
  public static int[][] lowerMatrixCol(int[][] matrix, float factor) {
    for (int x=0; x<matrix.length; x++) {
      for (int y=0; y<matrix[0].length; y++) {
        if (matrix[x][y]>=100) {
          matrix[x][y] *= factor;
        }
      }
    }
    return matrix;
  }
}
