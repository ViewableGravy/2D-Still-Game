
class TextBox implements Runnable {
  int x, y, wid, hei;
  int updateDelay;
  char[] totalText;
  boolean finished = true;
  String currentTextMK2 = "";

  TextBox(int x, int y, int wid, int hei, int updateDelay) {
    this.x = x;
    this.y = y;
    this.wid = wid;
    this.hei = hei;
    this.updateDelay = updateDelay;
  }

  public void LoadText(String text) {
    this.totalText = text.toCharArray();
    this.currentTextMK2 = "";
    this.finished = false;
  }

  public void run() {
    if (!finished) {
      try {
        while (totalText.length != currentTextMK2.length()) {
          Thread.sleep(updateDelay);
          currentTextMK2 += totalText[currentTextMK2.length()];
        }
        finished = true;
      } catch(Exception e) { println(e); }
    }
  }

  public void Display() {
    fill(0);
    stroke(255);
    rect(x,y,wid,hei);
    fill(255);
    text(currentTextMK2,x,y,wid,hei);
  }
}
