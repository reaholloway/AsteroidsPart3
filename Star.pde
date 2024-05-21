class Star {
  public int myColor;
  public int myX, myY;

  public Star() {
    int r = (int)(Math.random() * 250);
    int g = (int)(Math.random() * 250);
    int b = (int)(Math.random() * 250);
    myColor = color(r, g, b);
    myX = (int)(Math.random() * width);
    myY = (int)(Math.random() * height);
  }

  public void show() {
    fill(myColor);
    noStroke();
    ellipse(myX, myY, 2, 2);
  }
}
