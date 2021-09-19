Die Dice;

void setup() {
  fullScreen();
  background(#1CBC38);
  Dice = new Die(color(255, 0, 0), color(255, 200, 0), width/6, height/6, 80);
  Dice.roll();
  Dice.Display();
}

void draw() {
  if (keyPressed) {
    if (key== ' ') {
      Dice.roll();
      Dice.Display();
    }
  }
}
