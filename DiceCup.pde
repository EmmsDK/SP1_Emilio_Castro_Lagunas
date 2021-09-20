class DiceCup {
  int amountOfDices = 0;

  Die[] cup = new Die[10];

  void addDie(Die die) {
    // Adds a die to the cup
    cup[amountOfDices] = die;
    amountOfDices = amountOfDices + 1;
  }

  void shake() {
    for (int i = 0; i < cup.length-(cup.length-amountOfDices); i++) {
      cup[i].roll();
    }
  }

  void drawDices(int x, int y, int dieSize) {
    //We want to minus our cup with the amount of dices we roll
    background(#1CBC38);
    // We want to minus our cup with the amount of dices we roll
    int[] count = {-1, -1, -1, -1, -1,-1,-1};
    for (int i = 0; i < cup.length-(cup.length - amountOfDices); i++) {
      int theCount = 0;
      if (cup[i].dieValue == 1) {
        y=100;
        count[0]++;
        theCount =count[0];
      } else if (cup[i].dieValue == 2) {
        y=225;
        count[1]++;
        theCount =count[1];
      } else if (cup[i].dieValue == 3) {
        y=350;
        count[2]++;
        theCount =count[2];
      } else if (cup[i].dieValue == 4) {
        y=475;
        count[3]++;
        theCount =count[3];
      } else if (cup[i].dieValue==5) {
        y=600;
        count[4]++;
        theCount = count[5];
      } else if (cup[i].dieValue==6) {
        y=725;
        count[5]++;
        theCount =count[6];
      }

      cup[i].drawDie((x+150*theCount), y, dieSize);
    }
  }
}
