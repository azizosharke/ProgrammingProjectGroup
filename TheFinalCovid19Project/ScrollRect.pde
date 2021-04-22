//added by kevin Odonnell. 
// Code built on was from pranav
// and was supervised by aritro 
//and revised by abdelaziz

class ScrollRect {
 
  float rectPosX=0;
  float rectPosY=0;
  float rectPosY2=0;
  float rectWidth=14; 
  float rectHeight=30;
 
  boolean holdScrollRect=false; 
 
  float offsetMouseY; 
 
  //constror
  ScrollRect() {
    // you have to make a scrollRect in setup after size()
    rectPosX=width-rectWidth-1;
  }//constr
 
  void draw() {
    fill(122);
    stroke(0);
    line (rectPosX-1, 0, rectPosX-1, height);
    rect(rectPosX, rectPosY, rectWidth, rectHeight);

  }
 
  void centerLine(float offset) {
    line(rectPosX+3, rectPosY+rectHeight/2+offset, rectPosX+rectWidth-3, rectPosY+rectHeight/2+offset);
  }
  
  void mousePressedRect() {                              // making sure it moves when the mouse is pressed 
    if (mouseOver()) {
      holdScrollRect=true;
      offsetMouseY=mouseY-rectPosY;
    }
  }
  
  void mouseReleasedRect() {                           // making sure it stops when the mouse is released 
    scrollRect.holdScrollRect=false;
  }
  
  void drag() {                              // the dragging of the mouse 
    // dragging of the mouse 
    if (holdScrollRect) {
      rectPosY=mouseY-offsetMouseY;
      if (rectPosY<0)
        rectPosY=0;
      if (rectPosY+rectHeight>height-1)
        rectPosY=height-rectHeight-1;
    }
  }
 
  float scrollValue() {  
    return
      map(rectPosY, 0, height-rectHeight, 0, - (heightOfCanvas - height));
  }
 
  boolean mouseOver() {
    return mouseX>rectPosX&&
      mouseX<rectPosX+rectWidth&&
      mouseY>rectPosY&&
      mouseY<rectPosY+rectHeight;
  }//function 
  //
}//class 
//
