int y = 0;
int x = 0;
int a = 0;
int b = 0;
int graphX = 0;
int graphY = 0;
void setup() {
  size(512, 512);
  background(255);
  frameRate(3);
  for (int graphY = 0; graphY < 512; graphY += 8) {
      rect(x, graphY, 8, 8);
    for (int graph = 0; graph < 512; graph += 8) {
      rect(graph, graphY, 8, 8);
    }
  }
}
void draw() {
  translate(width/2, height/2);
  scale(1, -1);
  y = frameCount*frameCount;
  a = 4;
  b = 10;
  x = 3;
  fill(255, 0, 0);
  rect((frameCount * a) + x, (frameCount * b) + y, 5, 5);
  rect((-frameCount * a) + x, (-frameCount * b) +y, 5, 5);
}