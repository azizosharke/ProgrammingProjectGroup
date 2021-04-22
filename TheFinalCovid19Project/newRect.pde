// this was coded by Aritro with the help of Kevin and Aziz 
// it was supervised by Parnav 


class newRect {
  
  float rectX = 650;                    // height 
  float rectY;                         // width 
  int rectLength; 
  float rectHeight = 10;
  color rectColour;
  
  newRect(int theNumberOfCases, float x, float y, float h, color colour) {                 // rectangle constructor 
    rectX = x;
    rectColour = colour;
    rectHeight = h;
    rectY = y;
    rectLength = theNumberOfCases;                          
  }
  
  void draw() {
    fill(rectColour);  
    rect(rectX, rectY, rectLength*10, rectHeight);                                  // draw method 
  }
  
}
