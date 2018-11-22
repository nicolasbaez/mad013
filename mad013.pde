float i=0;
float j=0;
float rr=255;
float gg=255;
float bb=255;
float dColor=64;
float periodo=64;
void setup() {
  size(512, 256);
  background(0);
  smooth();
  noStroke();
}
void draw() {
  fill(0, 0, 0, 64);
  rect(0, 0, width, height);
  float r=map(i, 0, periodo, 0, width*sqrt(2));
  float tx=map(i, 0, periodo, 255, 0);
  fill(rr, random(gg), random(bb), random(tx));
  ellipse(width/2, height/2, r, r);
  rr+=random(-dColor, dColor);
  gg+=random(-dColor, dColor);
  bb+=random(-dColor, dColor);
  if (rr<0) {
    rr+=dColor*2;
  }
  if (gg<0) {
    gg+=dColor*2;
  }
  if (bb<0) {
    bb+=dColor*2;
  }
  if (rr>256) {
    rr-=dColor*2;
  }
  if (gg>256) {
    gg-=dColor*2;
  }
  if (bb>256) {
    bb-=dColor*2;
  }
  if (i<=periodo) {
    i++;
  } else {
    i=0;
  }
  j++;
  if (j<=periodo*8) {
    saveFrame("gif/mad013-######.png");
  }
}
