Spaceship silly = new Spaceship();
int starNum = 300;
Star[] giggle = new Star[starNum];
ArrayList <Asteroid> meow = new ArrayList <Asteroid>();
ArrayList <Bullet> bully = new ArrayList <Bullet>();

public void setup() {
  size(750, 750);
  for (int i = 0; i < starNum; i++) {
    giggle[i] = new Star();
  }
  for (int i = 0; i <= 10; i++) {
    meow.add(new Asteroid());
  }
}

public void draw() {
  background(0);
  for (int i = 0; i < starNum; i++) {
    giggle[i].show();
  }
  silly.show();
  silly.move();

  for (int i = 0; i < meow.size(); i++) {
    meow.get(i).move();
    if (dist ((float)meow.get(i).myCenterX, (float)meow.get(i).myCenterY, (float)silly.getX(), (float)silly.getX()) < 18) {
      meow.remove(i);
    } else {
      meow.get(i).show();
    }
  }

  for (int i = bully.size() - 1; i >= 0; i--) {
    bully.get(i).move();
    bully.get(i).show();

    if (bully.get(i).getX()>width) {

      bully.remove(i);
    } else if (bully.get(i).getY()>height) {

      bully.remove(i);
    } else if (bully.get(i).getY()<0) {

      bully.remove(i);
    } else if (bully.get(i).getX()<0) {

      bully.remove(i);
    }
  }
  for (int i = 0; i < meow.size(); i++) {
    for (int j = 0; j < bully.size(); j++) {
      if (dist((float)meow.get(i).myCenterX, (float)meow.get(i).myCenterY, (float)bully.get(j).getX(), (float)bully.get(j).getY()) <= 15) {
        meow.remove(i);
        i--;
        bully.remove(j);
        j--;
        break;
      }
    }
  }
}


public void keyPressed() {
  if (keyCode == UP) {
    silly.accelerate(1);
  } else if (keyCode == RIGHT) {
    silly.turn(10);
  } else if (keyCode == LEFT) {
    silly.turn(-10);
  } else if (keyCode == RETURN) {
    silly.hyperspace();
  } else if (keyCode == ' ') {
    bully.add(new Bullet(silly));
  } else if (keyCode == TAB){
    meow.add(new Asteroid());
  }
}
