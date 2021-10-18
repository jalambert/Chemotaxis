Bacteria[] Walk = new Bacteria[1681];
void setup() {
  frameRate(60);
  size(800, 800);
  int i = 0;
  for (int y = 0; y < 801; y+=20) {
    for (int x = 0; x < 801; x += 20) {
      Walk[i] = new Bacteria(x, y);
      i++;
    }
  }
}
int m = 0;
int s = 2;


void draw() {

  background(192);
  for (int i = 0; i < Walk.length; i++) {
    Walk[i].move();
    Walk[i].show();
  }
}
class Bacteria {
  int myX, myY, homeX, homeY, myColor;
  Bacteria(int x, int y) {
    myX = x;
    myY = y;
    homeX = x;
    homeY = y;
    myColor = color(0, 0, 255);
  }
  void move() {

    if (sq(mouseX-myX)+sq(mouseY-myY)<sq(100)) {
      myX = myX +((int)(Math.random()*15)-7);
      myY = myY +((int)(Math.random()*15)-7);
      myColor = color(0, (int)(Math.random()*255), 255);
    } else if (myX < homeX) {
      myX = myX +((int)(Math.random()*s)-m);
    } else if (myX > homeX) {
      myX = myX -((int)(Math.random()*s)-m);
    }
    if (myY < homeY) {
      myY = myY +((int)(Math.random()*s)-m);
    } else if (myY > homeY) {
      myY = myY -((int)(Math.random()*s)-m);
    } else {
      myColor = color(0, 0, 255);
    }

    if (myX <= 0) {
      myX = 0;
    } else if (myX >= 800) {
      myX = 800;
    }
    if (myY <= 0) {
      myY = 0;
    } else if (myY >= 800) {
      myY = 800;
    }
  }
  void show() {
    noStroke();
    fill(myColor);
    ellipse(myX, myY, 5, 5);
  }
}
