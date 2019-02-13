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
}
