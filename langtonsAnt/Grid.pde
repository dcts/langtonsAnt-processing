/*
 * Grid Object
 */ 
 
class Grid {
  int cols;
  int rows;
  int pxPerCell;
  int[][] matrixState;   // matrix to keep track of gridstates
  int[][] matrixColor;   // matrix to keep track of gridstates
  
  Grid (int cols, int rows, int pxPerCell) {
    println("grid init");
    this.cols = cols;
    this.rows = rows;
    this.pxPerCell = pxPerCell;
    this.matrixState = new int[this.cols][this.rows];
    this.matrixColor = new int[this.cols][this.rows];
    for (int x=0; x<this.cols; x++) {
      for (int y=0; y<this.rows; y++) {
        this.matrixState[x][y] = 0;
        this.matrixColor[x][y] = 0;
      }
    }
    println("grid init finished");
  }
  
  void renderState() {
    for (int x=0; x<this.cols; x++) {
      for (int y=0; y<this.rows; y++) {
        if (this.matrixState[x][y] == 1) {
          fill(255);  // fill white when state==1
        } else {
          fill(0);    // fill black when state==0
        }
        rect(x*this.pxPerCell, y*this.pxPerCell, this.pxPerCell, this.pxPerCell);        
      }
    }
  }

  void renderColor() {
    for (int x=0; x<this.cols; x++) {
      for (int y=0; y<this.rows; y++) {
        fill(this.matrixColor[x][y],0,0);
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
    return this.matrixState[x][y];
  }
  
  // flip cell state
  void flipCell(int x, int y) {
    this.matrixState[x][y] = Math.abs(this.matrixState[x][y]-1);
  }
}
