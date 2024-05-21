class Asteroid extends Floater {
  private double rotationSpeed;

  public Asteroid() {
    corners = 6;
    xCorners = new int[]{(int)(Math.random()*10)-10, (int)(Math.random()*10)+6, (int)(Math.random()*10)+9, (int)(Math.random()*10)+3, (int)(Math.random()*10)-10, (int)(Math.random()*10)-6};
    yCorners = new int[]{(int)(Math.random()*10)-8, (int)(Math.random()*10)-5, (int)(Math.random()*10), (int)(Math.random()*10)+9, (int)(Math.random()*10)+7, (int)(Math.random()*10)};
    myCenterX = (int)(Math.random() * width);
    myCenterY = (int)(Math.random() * height);
    myXspeed = (int)(Math.random()*5) - 2.5;
    myYspeed = (int)(Math.random()*5) - 2.5;
    myPointDirection = (int)(Math.random() * 360);
    myColor = 100;
    rotationSpeed = 2;
  }


  public void move() {
    turn(rotationSpeed);
    super.move();
  }
}
