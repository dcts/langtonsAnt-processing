class Grid {
  int rows;
  int cols;
  int px;
  int[][] matrix;
  
  Grid (int cell) {
    this.rows = cell;
    this.cols = cell;
    this.px = width / cell;
    this.matrix = new int[this.rows][this.cols];
    for (int x=0; x<this.cols; x++) {
      for (int y=0; y<this.rows; y++) {
        this.matrix[x][y] = 0;
      }
    }
  }
  
  void render() {
    for (int x=0; x<this.cols; x++) {
      for (int y=0; y<this.rows; y++) {
        if (this.matrix[x][y] == 1) {
          fill(255);
        } else {
          fill(0);    
        }
        rect(x*this.px, y*this.px, this.px, this.px);        
      }
    }
  }
  
  int getCell(int x, int y) {
    return this.matrix[x][y];
  }
  
  void flipCell(int x, int y) {
    this.matrix[x][y] = Math.abs(this.matrix[x][y]-1);
  }
  
  
  
}
