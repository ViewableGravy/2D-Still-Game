


TextBox txtbox = new TextBox(100,100,400,400, 20);
Thread txtboxThread = new Thread(txtbox, "TextBoxMain");
void setup() {
  size(600,600);
  textSize(30);
  txtbox.LoadText("This is some generic test text that should take long enough to write out that i can see if it is working");
  txtboxThread.start();
  
}

void draw() {
  background(0);
  txtbox.Display();
}
