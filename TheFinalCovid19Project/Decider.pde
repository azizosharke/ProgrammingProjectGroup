// was coded by parnav and edited by aritro 
// was revised by kevin and aziz 

class Decider {
  PFont font;
  int xPos = 800;           // borders to get it working 
  int yPos = 820;

  Decider()
  {
    font = loadFont("AgencyFB-Reg-10.vlw");
  }
  
  int setWeek()
  {
     if(int((yPos - yAxis) / 20) > noOfWeeks)                        // no of weeks we have in our data 
       return noOfWeeks; 
     else
       return int((yPos - yAxis) / 20);
  }

  void draw() 
  {
    fill(0);
    rect(xPos, 35, 162, 20);                                        // slider draw 
    fill(255);
    stroke(0);
    rect(yPos, 30, 30,30);
    fill(0);
    text("Week " + (setWeek() + 1), 861, 25);
    noFill();
  }

  void changeWeek(int mouseA, int mouseB)                                  // to contol the weeks in order 
  {
    if(mouseB < yTry && mouseB> zTry)
    {
      if(mouseA >= xTry
      && mouseA <= xAxis)
      {
        if(mouseA > xAxis)
          yPos = xAxis;
        else if(mouseA < yAxis)
          yPos = yAxis;
        else
          yPos = mouseA;
      }
    }
  }
}
