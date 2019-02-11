Grid grid;
Ant ant;
int value;


// LANGTONS ANT PROJECT
void setup() {
  pixelDensity(displayDensity());
  size(1200,1200);
  
  // initialize objects
  grid = new Grid(100);
  ant = new Ant(50,50);
  
  // set black stroke
  stroke(255);
  
  // simulate run
  frameRate(100000);
}

void draw() {
  grid.render();
  ant.action();
  //println(ant.readGrid());
  
  //grid.matrix[9][0] = 1;
  //println(grid.getCell(9,0));
  
  
}

void mousePressed() {
  int x = mouseX/grid.px;
  int y = mouseY/grid.px;
  println("X:" + x + "  Y:" + y);
  //grid.matrix[x][y] = 1;
  grid.flipCell(x,y);  
}
