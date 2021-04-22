// coded by Aritro and Pranav
// supervised by Aziz and Kevin
class graphClass {
  float h;
  float x;
  float y = 650;
  float w = 30;
  color colour;
  
  graphClass(float theNumberOfCases, float x, color colour) {
    h = theNumberOfCases*.55;
    this.x = x;
    this.colour = colour;
  }
  
  void draw(){
    noStroke();
    fill(colour);
    rect(x, y-h, w, h);
  }
}
