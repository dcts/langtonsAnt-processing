class Ant {
  int posX, posY;
  int dir;
  
  
  Ant(int posX, int posY) {
    this.posX = posX;
    this.posY = posY;
    this.dir = 0;
  }
  
  void action() {
    if (this.readGrid()==1) {
      this.turnLeft();
    } else {
      this.turnRight();
    }
    grid.flipCell(this.posX,this.posY);
    this.move();
  }
  
  int readGrid() {
    return grid.getCell(this.posX,this.posY);
  }
  
  void turnLeft() {
    this.dir = H.mod(this.dir-1, 4);
  }
  
  void turnRight() {
    this.dir = H.mod(this.dir+1, 4);
  }
  
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
  
  void displayPos() {
    println("ant posX: " + this.posX + " posY: " + posY + " dir: " + dir); 
  }
  
  void normalizeLocation() {
     this.posX = H.mod(this.posX,grid.cols);
     this.posY = H.mod(this.posY,grid.cols);
  }
}
