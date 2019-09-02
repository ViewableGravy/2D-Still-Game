
SceneManager scene;
void setup() {
  size(600,600);
  textSize(30);
  scene = new SceneManager();
  scene.Start();
  
}

void draw() {
  background(0);
  scene.Display();
}
