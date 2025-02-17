float ter = 0;

void setup() {
  size(700, 700);
  rectMode(CENTER);
}

void draw() {
  background(0);
  ter += 0.011;  // Control oscillation
  beginShape();
  recursion(100, 400, 500);
  endShape();
}

void recursion(int x, int y, int size) {
  
  curveVertex(x, y);
  curveVertex(x, y);
  // experiment 
  // Was planning to add more than lines
  // Repeat of line 23 induces curvature
  
  curveVertex(x+size+(size*cos(ter)), y+(size*sin(ter*(size/20)))); 
  curveVertex(x+size+(size*cos(ter)), y+(size*sin(ter*(size/20)))); 
 
  if (size > 20) {
    recursion(x,y/2,size/2);
    recursion(x+size/2,y/2+size/2,size/2);
    recursion(x+size/2,y-size/2,size/2);
    recursion(x+2*size/2,y-size/2,size/2);
  }
}
