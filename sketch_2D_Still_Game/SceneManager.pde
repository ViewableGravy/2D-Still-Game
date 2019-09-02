
class SceneManager {
  TextBox txtBox = new TextBox(width/6,height/6,(width/6) * 4,(height/6) * 4,50);
  Thread SceneTextBox = new Thread(txtBox,"Name");
  
  
  SceneManager(/* String FileName */) {
    /* 
      get file (with scenes details. this should be formatted so that each part of the scene is sorted together and it can 
      update the textbox at the relevant time
      e.g.
      #1
      text: lisa is finally here
      image: *location*
    */
    //modify txtBox to fit properly
    //initialise textbox thread here
    txtBox.LoadText("This is some generic test text that should take long enough to write out that i can see if it is working");
  }
  
  
  
  public void Start() {
    SceneTextBox.start();
  }
  
  public void Display() {
    txtBox.Display();
  }
  
}
