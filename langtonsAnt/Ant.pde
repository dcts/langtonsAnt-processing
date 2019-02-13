/*
 * Ant object
 */ 
 
class Ant {
  int posX, posY;  // x and y coordinates of ant
  int dir;         // 0: north, 1: east, 2: south, 3: west
  
  Ant(int posX, int posY) {
    println("ant init");
    this.posX = posX;
    this.posY = posY;
    this.dir = 0;
  }
  
  // one iteration in langtons ant algorithm
  void action() {
    this.displayPos();
    if (this.readGrid()==1) {
      this.turnLeft();
    } else {
      this.turnRight();
    }
    grid.flipCell(this.posX,this.posY);
    this.move();
  }
  
  // returns state of the grid of current ants location
  int readGrid() {
    return grid.getCell(this.posX,this.posY);
  }
  
  void turnLeft() {
    this.dir = this.dir-1;          // substract 1 to turn 90 degree left
    this.dir = H.mod(this.dir, 4);  // use modulo function
  }
  
  void turnRight() {
    this.dir = this.dir+1;          // add 1 to turn 90 degree left
    this.dir = H.mod(this.dir, 4);  // use modulo function
  }
  
  // go one step forward (depending on current dir)
  void move() {
    if (dir==0) {
      this.posY += -1;
    } else if (dir==1) {
      this.posX += 1;
    } else if (dir==2) {
      this.posY += 1;
    } else if (dir==3) {
      this.posX += -1;
    }
    this.normalizeLocation();
  }
  
  // function added for debugging
  void displayPos() {
    println("ant posX: " + this.posX + " posY: " + posY + " dir: " + dir); 
  }
  
  // ensure that ant stays in the grid
  void normalizeLocation() {
     this.posX = H.mod(this.posX,grid.cols);
     this.posY = H.mod(this.posY,grid.rows);
  }
  
  // render ants location
  void render(color c) {
    grid.paintCell(this.posX, this.posY, c);  
  }
}
