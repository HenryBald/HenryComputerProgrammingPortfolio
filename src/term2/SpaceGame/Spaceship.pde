class Spaceship {
  // Member Variables
  int x, y, w, laserCount, turretCount, health;
  PImage p1;

  // Constructor
  Spaceship() {
    x = width/2;
    y = height/2;
    w = 100;
    laserCount = 1000;
    turretCount = 1;
    health = 100;
    p1 = loadImage("Spaceship.png");
  }

  //Member Methods

  void display() {
    imageMode(CENTER);
    image(p1, x, y);
  }

  void move(int tempX, int tempY) {
    x = tempX;
    y = tempY;
  }

  boolean fire() {
    if (laserCount>0) {
      return true;
    } else {
      return false;
    }
  }

  boolean intersect(Rock r) {
    float d = dist(x, y, r.x, r.y);
    if (d<r.diam/2+w/2) { // refine the collision detection
      return true;
    } else {
      return false;
    }
  }
}
