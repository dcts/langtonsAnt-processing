public static class H {
  
  public static int mod(int value, int mod) {
    value = value % mod;
    if (value<0) {
      value += mod;
    }
    return value;
  }
}
