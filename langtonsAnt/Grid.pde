/*
 * Grid Object
 */ 
 
class Grid {
  int cols;
  int rows;
  int pxPerCell;
  int[][] matrix;   // matrix to keep track of gridstates
  
  Grid (int cols, int rows, int pxPerCell) {
    println("grid init");
    this.cols = cols;
    this.rows = rows;
    this.pxPerCell = pxPerCell;
    this.matrix = new int[this.cols][this.rows];
    for (int x=0; x<this.cols; x++) {
      for (int y=0; y<this.rows; y++) {
        this.matrix[x][y] = 0;
      }
    }
    println("grid init finished");
  }
  
  void render() {
    for (int x=0; x<this.cols; x++) {
      for (int y=0; y<this.rows; y++) {
        if (this.matrix[x][y] == 1) {
          fill(255);  // fill white when state==1
        } else {
          fill(0);    // fill black when state==0
        }
        rect(x*this.pxPerCell, y*this.pxPerCell, this.pxPerCell, this.pxPerCell);        
      }
    }
  }
  
  void paintCell(int x, int y, color c) {
    fill(c); 
    rect(x*this.pxPerCell, y*this.pxPerCell, this.pxPerCell, this.pxPerCell); 
  }
  
  // get state of a give cell (0 or 1)
  int getCell(int x, int y) {
    return this.matrix[x][y];
  }
  
  // flip cell state
  void flipCell(int x, int y) {
    this.matrix[x][y] = Math.abs(this.matrix[x][y]-1);
  }
}
