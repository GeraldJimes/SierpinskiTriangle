public void setup() {
  size(400, 400);
}

public void draw() {
  background(0);
  sierpinski(100, 300, 200, 20);
}

public void mouseDragged() {

}

public void sierpinski(int x, int y, int len, int n) {
  if (len < n)
    triangle(x, y, x + len, y, x + len/2, y - len);
  else {
    sierpinski(x, y, len/2, n);
    sierpinski(x + len/2, y, len/2, n);
    sierpinski(x + len/4, y - len/2, len/2, n);
  }
}
