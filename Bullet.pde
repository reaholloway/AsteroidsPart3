  class Bullet extends Floater {

  public Bullet(Spaceship theShip) {
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myXspeed = theShip.getXspeed();
    myYspeed = theShip.getYspeed();
    myPointDirection = theShip.getPointDirection();
    myColor = 255;
    accelerate(6.0);
  }
  void show() {
    ellipse((float)myCenterX, (float)myCenterY, 2, 2);
    super.show();
  }

  void move() {
    myCenterX+= myXspeed;
    myCenterY += myYspeed;
  }

  public double getX() {
    return myCenterX;
  }
  public double getY() {
    return myCenterY;
  }
  public double getXspeed() {
    return myXspeed;
  }
  public double getYspeed() {
    return myYspeed;
  }
  public double getPointDirection() {
    return myPointDirection;
  }
}
