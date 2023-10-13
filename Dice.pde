public int total;

void setup()
{
  size(500, 500);
  noLoop();
}
void draw()
{
  text ("Total: " + total, 250, 360);
  noLoop();
  background(0, 0, 0);
  total=0;
  for(int a =50; a<300; a+=60){
    for(int b = 50; b<300; b+=60){
    Die bob = new Die(a, b);
    bob.roll();
    bob.show();
    }
  }}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int dieRoll;
  int myX;
  int myY;
  Die(int x, int y) {
    myX= x;
    myY= y;
  }

  void roll()
  {
    dieRoll= (int) (Math.random()*6)+1;
    total = total + dieRoll;
  }
  void show() {
    fill(250, 100, 100);
    rect(myX-25, myY-25, 50, 50);
    fill(250,250,250);
    if (dieRoll == 1) {
      ellipse(myX, myY, 12, 12);
    } else if (dieRoll == 2) {
      ellipse(myX-10, myY-10, 10, 10);
      ellipse(myX+10, myY+10, 10, 10);
    } else if (dieRoll == 3) {
      ellipse(myX-10, myY-10, 10, 10);
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX, myY, 10, 10);
    } else if (dieRoll == 4) {
      ellipse(myX-10, myY-10, 10, 10);
      ellipse(myX+10, myY-10, 10, 10);
      ellipse(myX+10, myY+12, 10, 10);
      ellipse(myX-10, myY+12, 10, 10);
    } else if (dieRoll == 5) {
      ellipse(myX-10, myY-12, 10, 10);
      ellipse(myX+10, myY-12, 10, 10);
      ellipse(myX+10, myY+12, 10, 10);
      ellipse(myX-10, myY+12, 10, 10);
      ellipse(myX, myY, 10, 10);
    } else {
      ellipse(myX-10, myY-12, 10, 10);
      ellipse(myX+10, myY-12, 10, 10);
      ellipse(myX-10, myY+1, 10, 10);
      ellipse(myX+10, myY+1, 10, 10);
      ellipse(myX-10, myY+15, 10, 10);
      ellipse(myX+10, myY+15, 10, 10);
    }
  }
}
