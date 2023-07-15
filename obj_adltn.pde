PShape model;

void setup() {
  frameRate(60);
  background(0);
  size(500, 500, P3D);
  model = loadShape("sample.obj");
  model.scale(0.01);
  model.translate(width/2, height/2, 0);
  shape(model);
}

void draw() {
  background(0);
  movePlane();
  showtext();
}

void movePlane() {
  float moveX, moveY;
  if (mousePressed) {
    moveX = mouseX - pmouseX; 
    moveY = mouseY - pmouseY; 
    model.translate(moveX, moveY, 0);
  } else {
    moveX = 0;
    moveY = 0;
    model.translate(0, 0, 0);
  }
  shape(model);
}

void showtext() {
  String frame = nf(frameRate, 2, 2) + "FPS";
  textSize(40);
  text("This is Airplane", 100, 100);
  text(frame, 300, 400);
}
