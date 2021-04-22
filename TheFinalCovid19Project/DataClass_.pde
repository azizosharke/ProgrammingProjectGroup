// this code was done by Aziz and supervised by Kevin , Pranav and Aritro  

class DataClass {                 
  String theDate ;
  String theCity;
  String theState; 
  int theNumberOfGeoid ; 
  int theNumberOfCases ; 
  String theCountry ;
  float yA ;
  float movement;
  boolean down;
  boolean up ;
  float k;
  int j =0 ; 
  DataClass(String date, String city, String countries,int location ,int cases,String country) {                     // constructor for the data
    this. theDate = date;
    this.theCity = city ;
    this.theState= countries;
    this. theNumberOfGeoid = location ;
    this.theNumberOfCases = cases ; 
    this.theCountry= country;
    println("The Data has  " + date + " " + city + " " + countries + " " + location + " " + cases + " " + country );        // println to see what we got on the screen 
  }
void move() {   // speed of the text 
  if(mousePressed){
  down = true;
  
  if (down== true){
    scrollRect.rectPosY2 = scrollRect.rectPosY - 1 ;
  }
  
  if (scrollRect.rectPosY > scrollRect.rectPosY2){
     yA +=  scrollRect.rectPosY/1000;
  movement++;
  scrollRect.rectPosY2 = scrollRect.rectPosY +1 ;
  down =false;
  

  if (scrollRect.rectPosY < scrollRect.rectPosY2){
    down = true;
   
  }
  }
  }
} 

  void draw ( float y) {
 
  String theString =  theDate + " " +theCity + " " + theState + " "+ String.valueOf(theNumberOfGeoid) + " " + String.valueOf(theNumberOfCases) + " " + theCountry ;      // draw for the data 
  text(theString,24 , movement+((y-yA) * 22) ); // to get the data organized , 24 which is the distance between the border and the text, y = organize the text , yA ; make it move 
  newRect bar = new newRect(theNumberOfCases, 652, movement+(((y-yA) * 22) - 10), 10, white);
  newRect largeRect = new newRect(600/10, 650, movement+(((y-yA) * 22) - 10), 12, black);
  largeRect.draw();
  bar.draw();
  }

}
