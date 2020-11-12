//>*klask* gi mig 12

class ParticleSystem {
  float x1,y1,sizeX,sizeY;
  float gravity = .1;
  float speedX = random(-6,7);
  float speedY = random(-6,7);
  
  color col;
  
  //> ellipse constructor
  ParticleSystem(float x, float y, float sizeX, float sizeY, color col) {
    this.x1 = x;
    this.y1 = y;
    this.sizeX = sizeX;
    this.sizeY = sizeY;
    this.col = col;
  }
  //################
  //
  //# who cares, it workz B|
  //
  //################
  /*//> rectangle constructor
  ParticleSystem(float x, float y, float sizeX) {
    this.x1 = x;
    this.y1 = y;
    this.sizeX = sizeX;
    this.sizeY = sizeX;
  }*/
  
  /*//> triangle constructor
  ParticleSystem(float x1, float y1, float x2, float y2, float x3, float y3) {
    this.x1 = x1;
    this.y1 = y1;
    this.x2 = x2;
    this.y2 = y2;
    this.x3 = x3;
    this.y3 = y3;
  }*/
  
  void update() {
    display();
    move();
  }
  
  void display() {
    if(switcher == 0)
      ellipse(x1,y1,sizeX,sizeY);
    else if(switcher == 1)
      rect(x1,y1,sizeX,sizeY);
    else
      triangle(x1,y1,x1+sizeX/2,y1-sizeY,x1+sizeX,y1);    //lil buggy, but he got the spirit
  }
  
  void move() {
    x1 += speedX;
    speedY += gravity;
    
    //if(y1 >= windowSize[1] / 2)
      //speedY = 0;
    //if(x1 < 400)
      y1 += speedY;
  }
  
  //> sneaky breaky code
  boolean isOffScreen() {
    //return x1 < sizeX/2 || x1 > windowSize[0]+sizeX/2 || y1 < sizeY/2 || y1 > windowSize[1]+sizeY/2;    //this is great
    return x1 < 0-sizeX/2 || x1 > windowSize[0]+sizeX/2 || y1 < 0-sizeY/2 || y1 > windowSize[1]+sizeY/2;    //but i like this
  }
}
