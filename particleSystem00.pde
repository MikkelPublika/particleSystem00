//> make particles
//> 1st click should produce circles, 2nd rectangles and 3rd triangles w/e
//> daz it
//> ...
//> or maybe nut!
//> maybe one could add a collidable surface (class structure), and create a waterfall effect with the particles 

int switcher = 0;
float numOfParticles = 50;
float sizeX = 46;    //preferably 69, but 4 the 6 works
float sizeY = 46;

color col = color(0,50,255);

int[] windowSize = {1600,900};

ArrayList<ParticleSystem> ps = new ArrayList<ParticleSystem>();

void settings() {
  size(windowSize[0],windowSize[1]);
}

void setup(){
  background(0);
  frameRate(120);
  noStroke();
  rectMode(CENTER);
}

void draw() {
  background(0);
  for(int i = ps.size()-1; i >= 0; i--) {
    ps.get(i).update();
    
    if(ps.get(i).isOffScreen()) {
      ps.remove(i);
    }
  }
  if(mouseButton == RIGHT)
    background(0);
}

void mousePressed() {
  switcher++;
  if(switcher > 2)
    switcher = 0;
  for(int i = 0; i < numOfParticles; i++) {
    ps.add(new ParticleSystem(mouseX,mouseY,sizeX,sizeY,col));
  }
}
