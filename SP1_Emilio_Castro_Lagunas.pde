Die die1;
Die die2;
Die die3;
Die die4;
Die die5;
DiceCup cup;


void setup() {
  size(1000, 800);
  background(#1CBC38);
  // Initialize
  cup = new DiceCup();
  die1 = new Die(#FF0000, color(0, 0, 255));
  cup.addDie(die1);
  die2= new Die(color(175), color(255, 0, 255));
  cup.addDie(die2);
  die3 = new Die(color(0, 255, 0), color(174, 188, 10));
  cup.addDie(die3);
  die4 = new Die(color(70), color(255, 0, 175));
  cup.addDie(die4);
  die5 = new Die(color(255), color(0));
  cup.addDie(die5);
  cup.shake();
  cup.drawDices(100, 100, 100);
}

void draw() {
  // Framerate for the roll
  frameRate(30);
  // Press 'SPACE' to roll
  if (keyPressed) {
    if (key == 'r') {
      delay(500);
    }
    cup.shake();
    cup.drawDices(100, 100, 100);
  }
}
