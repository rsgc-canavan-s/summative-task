int y = 0;
int x = 0;
int a = 0;
int b = 0;
int y2 = 0;
int x2 = 0;
int graphX = 0;
int graphY = 0;
int graphState = 0;
int rectA = 75;
int rectB = 100;

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
  if (graphState == 0) {
    //makes this a non-linear formula because "frameCount" is now an exponent
    y = frameCount*frameCount;
    //changes y-position
    y2 = -100;
    //changes the stretch/compression of the parabola
    a = 30;
    //changes the distance between points
    b = 10;
    //changes parabola's x-position
    x = 0;
    x2 = 160;
    fill(255, 0, 0);
    rect((frameCount * a) + x + x2, (frameCount * b) + y + y2, 5, 5);
    //println ("frameCount:" + frameCount);
    rect((-frameCount * a) + x + x2, (-frameCount * b) + y + y2, 5, 5);
    rect((frameCount - frameCount) + x + x2, (frameCount - frameCount) + y2, 5, 5);
  }
}
void mouseClicked() {
  if (mouseY < rectA + 50 && mouseX < rectB + 100 && mouseX > rectB + 100) {
    println("click");
  }
}

//void keyPressed() {
// if (graphState == 0) {
//   if (keyPressed) {
//     if (key == ' ') {
//       graphState = 1;
//     }
//   }
// }
//}