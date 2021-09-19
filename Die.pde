class Die {
  color eyeColor;
  color dieColor;
  int xpos;
  int ypos;
  int diceSize;
  int dieValue;

  Die(color tempEye, color tempDie, int tempXpos, int tempYpos, int tempSize ) {
    eyeColor = tempEye;
    dieColor = tempDie;
    xpos = tempXpos;
    ypos = tempYpos;
    diceSize = tempSize;
  }

  int roll() {
    dieValue = int(random(1, 7));
    return dieValue;
  }
  void Display() {
    boolean[] eyes = {false, false, false, false, false, false, false};
    switch(dieValue) {
    case 1:
      eyes[3] = true;
      break;
    case 2:
      eyes[2] = true;
      eyes[4] = true;
      break;
    case 3:
      eyes[2] = true;
      eyes[3] = true;
      eyes[4] = true;
      break;
    case 4:
      eyes[0] = true;
      eyes[2] = true;
      eyes[4] = true;
      eyes[6] = true;
      break;
    case 5:
      eyes[0] = true;
      eyes[2] = true;
      eyes[3] = true;
      eyes[4] = true;
      eyes[6] = true;
      break;
    case 6:
      eyes[0] = true;
      eyes[1] = true;
      eyes[2] = true;
      eyes[4] = true;
      eyes[5] = true;
      eyes[6] = true;
      break;
    }

    stroke(255);
    fill(dieColor);
    noStroke();
    rectMode(CENTER);
    rect(xpos, ypos, diceSize, diceSize);

    fill(eyeColor, (eyes[0] ? 255 : 0));
    ellipse(xpos-diceSize/3, ypos-diceSize/3, diceSize/4, diceSize/4);

    fill(eyeColor, (eyes[1] ? 255 : 0));
    ellipse(xpos, ypos-diceSize/3, diceSize/4, diceSize/4);

    fill(eyeColor, (eyes[2] ? 255 : 0));
    ellipse(xpos+diceSize/3, ypos-diceSize/3, diceSize/4, diceSize/4);

    fill(eyeColor, (eyes[3] ? 255 : 0));
    ellipse(xpos, ypos, diceSize/4, diceSize/4);

    fill(eyeColor, (eyes[4] ? 255 : 0));
    ellipse(xpos-diceSize/3, ypos+diceSize/3, diceSize/4, diceSize/4);

    fill(eyeColor, (eyes[5] ? 255 : 0));
    ellipse(xpos, ypos+diceSize/3, diceSize/4, diceSize/4);

    fill(eyeColor, (eyes[6] ? 255 : 0));
    ellipse(xpos+diceSize/3, ypos+diceSize/3, diceSize/4, diceSize/4);
  }
}
