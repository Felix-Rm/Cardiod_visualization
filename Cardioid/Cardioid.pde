int total = 10000;
float current = 0;
float radius = 0;

void setup() {
  size(600, 600);

  radius = width * 0.48;
  colorMode(HSB);

  background(20);

  translate(width/2, height/2);

  for (float i = 0; i < TWO_PI; i+= TWO_PI/total) {
    float x = radius * cos(i);
    float y = radius * sin(i);

    fill(0, 0, 255);
    noStroke();
    ellipse(x, y, 3, 3);
  }

  for (int i = 0; i < total; i++) {
    float x1 = radius * cos(TWO_PI/total * i + QUARTER_PI);
    float y1 = radius * sin(TWO_PI/total * i + QUARTER_PI);

    int j = (i * 4) % total;
    float x2 = radius * cos(TWO_PI/total * j);
    float y2 = radius * sin(TWO_PI/total * j);

    float d = dist(x1, y1, x2, y2);
    float h = map(d, 0, radius*2, 0, 255);
    stroke(h, 255, 255, 50);

    line(x1, y1, x2, y2);
  }

  noLoop();
  save("output.png");
}


void draw() {
}
