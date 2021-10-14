Bacteria[] Walk = new Bacteria[2000];
void setup() {
  size(800, 800);
  for (int i = 0; i < Walk.length; i++) {
    Walk[i] = new Bacteria();
  }
}
int m = 5;
int s = 14;

void draw() {
  background(192);
  for (int i = 0; i < Walk.length; i++) {
    Walk[i].move();
    Walk[i].show();
  }
}
class Bacteria {
  int myX, myY;
  Bacteria() {
    myX = (int)(Math.random()*800)+1;
    myY = (int)(Math.random()*800)+1;
  }
  void move() {

    if (myX <= mouseX) {
      myX = myX +((int)(Math.random()*s)-m);
    } else if (myX > mouseX) {
      myX = myX -((int)(Math.random()*s)-m);
    }
    if (myY <= mouseY) {
      myY = myY +((int)(Math.random()*s)-m);
    } else if (myY > mouseY) {
      myY = myY -((int)(Math.random()*s)-m);
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
    fill(255, (int)(Math.random()*255), 0,150);
    ellipse(myX, myY-2, 4, 4);
    fill(0, (int)(Math.random()*255), 255,150);
    ellipse(myX, myY+2, 4, 4);
  }
}
