/*to do:
num rolls round
gradient background
*/

Dice bob;
Dice joe;
boolean loop = true;
int totalNum = 0;
int roundNum = 0;

void setup() {
  size(800, 800);
  background(0, 160, 160);
}
void draw()
{
  fill(0, 160, 160);
  rect(-25, -25, 900, 900);
  for (int i = 0; i <= 10; i++){
    for (int x = 0; x < i; x++) {
      bob = new Dice(x * 75 + 50, i * 55);
      bob.roll();
      bob.show();
      totalNum += bob.num;
      roundNum += bob.num;
    }
  } 
  fill(0, 0, 0, 100);
  
  textSize(30);
  text("Cumilative rolls:", 50, 650);
  text("This round total rolls:", 400, 50);
  
  textSize(50);
  text(totalNum, 50, 700);
  text(roundNum, 625, 100);
  roundNum = 0;
}

void mousePressed()
{
  if (loop == true) {
    loop();
    loop = false;
  } else {
    noLoop();
    loop = true;
  }
}

class Dice {

  int myX, myY, num;
  
  Dice(int x, int y) //constructor AKA fancy initializer
  { // 
    myX = x;
    myY = y;
    roll();
  }
  
  void roll() { //member function
    num = (int)(Math.random() * 6 + 1);
  }
  
  void show() {//member function
    noFill();
    rect(myX, myY, 50, 50, 10);
    fill(0); //dots in H turn black
    
    /* library of ellipses
    ellipse(myX + 10, myY + 12, 7, 7); // column 1 of H
    ellipse(myX + 10, myY + 25, 7, 7);
    ellipse(myX + 10, myY + 38, 7, 7);
    
    ellipse(myX + 25, myY + 25, 7, 7); //middle dot
    
    ellipse(myX + 40, myY + 12, 7, 7); // column 3 of H
    ellipse(myX + 40, myY + 25, 7, 7);
    ellipse(myX + 40, myY + 38, 7, 7);
    */
    
    if (num == 1){
      ellipse(myX + 25, myY + 25, 7, 7);
    } else if (num == 2) {
      ellipse(myX + 10, myY + 12, 7, 7);
      ellipse(myX + 40, myY + 38, 7, 7);
    } else if (num == 3) {
      ellipse(myX + 25, myY + 25, 7, 7);
      ellipse(myX + 10, myY + 12, 7, 7);
      ellipse(myX + 40, myY + 38, 7, 7);
    } else if (num == 4) {
      ellipse(myX + 10, myY + 12, 7, 7);
      ellipse(myX + 10, myY + 38, 7, 7);
      ellipse(myX + 40, myY + 12, 7, 7);
      ellipse(myX + 40, myY + 38, 7, 7);
    } else if (num == 5) {
      ellipse(myX + 25, myY + 25, 7, 7);
      ellipse(myX + 10, myY + 12, 7, 7);
      ellipse(myX + 10, myY + 38, 7, 7);
      ellipse(myX + 40, myY + 12, 7, 7);
      ellipse(myX + 40, myY + 38, 7, 7);
    } else if (num == 6) {
      ellipse(myX + 10, myY + 12, 7, 7);
      ellipse(myX + 10, myY + 25, 7, 7);
      ellipse(myX + 10, myY + 38, 7, 7);
      ellipse(myX + 40, myY + 12, 7, 7);
      ellipse(myX + 40, myY + 25, 7, 7);
      ellipse(myX + 40, myY + 38, 7, 7);
    }

  } //end show()
}// end of Dice class
