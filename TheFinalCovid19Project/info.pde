// information for the the map as when you click on it , will show you the weekly cases and deathes  
// this was coded by aziz and kevin 
// was revised by aritro 
// was revised by parnav 

class details {              
  Table data;
  String stateName;
  String stateAbbrev;
  int week;
  int noOfCases;
  PFont fontOne;
  PFont fontTwo;

  details(String stateName, String stateAbbrev, int week) {
    this.week = week;
    this.stateAbbrev = stateAbbrev;
    this.stateName = stateName;
    data = loadTable("StateWeeklyCases.csv", "header");
    fontOne = loadFont("AgencyFB-Reg-12.vlw");
    fontTwo = loadFont("Arial-BoldMT-12.vlw");
    setInfoMap();
  }

  void draw() {
    
    stroke(0);                                             // will be on the top with information about the cases . 
    fill(255);
    rect(20, 5, textWidth(stateName)+300, 200);
    line(40, 40, textWidth(stateName)+150, 40);
    noStroke();
    fill(0);
    textFont(fontOne);
    text (stateName, 70, 30 );
    text ("Weekly Cases: ", 25, 60);
    textFont(fontTwo);
    text(noOfCases, 130, 60);
   
  }

  void setInfoMap() {
    noOfCases = 0;
    int rowCount = data.getRowCount();
    for (int row = 0; row < rowCount; row++) {
      String myWeek = "" + week + "";

      int aCases = int(data.getRow(row).getString(myWeek));
      String aStateAbbrev = data.getRow(row).getString("state");

      if (aStateAbbrev.equals(stateAbbrev)) {
        noOfCases = aCases;
      
      }
    }
  }
}
