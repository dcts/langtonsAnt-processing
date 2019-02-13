/* LANGTONS ANT
 * programmed by dcts
 */
 
// USER SETTINGS
int nbrOfCols   = 150;     // set nbr of cols 
int nbrOfRows   = 150;     // set nbr of rows
int pxPerCell   = 3;       // min value is 2
int renderSpeed = 200;     // 1: slow, 100: fast, 1000: ultrafast
// initialize Objects
Grid grid = new Grid(nbrOfCols, nbrOfRows, pxPerCell);
Ant ant = new Ant(nbrOfCols/2, nbrOfRows/2);

// initialize window
void settings() {
  println(nbrOfCols*pxPerCell);
  println(nbrOfRows*pxPerCell);
  size(nbrOfCols*pxPerCell, nbrOfRows*pxPerCell);   
}

void setup() {
  // check if settings are valid
  checkSettings(nbrOfRows, nbrOfCols, pxPerCell);
  //stroke(0);
}

void draw() {
  grid.render();               // update the grid
  ant.render(color(255,0,0));  // paint ant in red
  // renderSpeed
  for (int i=0; i<renderSpeed; i++) {
    ant.action();
  }
}

// checks user input, exits when invalid
void checkSettings(int nbrOfRows, int nbrOfCols, int pxPerCell) {
  if (nbrOfRows*pxPerCell>=displayHeight || nbrOfCols*pxPerCell>=displayWidth) {
    println("invalid user input (check \"USER SETTINGS\")!");
    println("windowsize ("+nbrOfRows*pxPerCell+"x"+nbrOfCols*pxPerCell+") > screensize ("+displayWidth+"x"+displayHeight+")");    
    println("algorithm stopped");
    exit();
  }
}

// clicking on a random cell swaps its current state
void mousePressed() {
  int x = mouseX/grid.pxPerCell;
  int y = mouseY/grid.pxPerCell;
  println("X:" + x + "  Y:" + y);
  //grid.matrix[x][y] = 1;
  grid.flipCell(x,y);  
}
