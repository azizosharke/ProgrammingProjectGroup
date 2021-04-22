//this was coded by aziz and revised by parnav. 
// was revised by kevin 
// commented by aritro.

class graph {                 

  Table casesData;
  ArrayList<Integer> cases = new ArrayList();                                  // array list for the number of cases 
  String stateAbbrev;
  int coordinates;
  int graphHeight;
  float positionC;
  int minimumX;
  int maximumX;
  int week;
  PVector[] positionA = new PVector[noOfPoisitions];                                         // position 
  PVector[] positionB = new PVector[noOfPoisitions];
  PFont font = loadFont("Arial-ItalicMT-12.vlw");

  graph(String stateAbbrev, int week) {                                  // constructor for the graph 
    this.week = week;
    this.stateAbbrev = stateAbbrev;
    casesData = loadTable("StateWeeklyCases.csv", "header");
    getStatesInOrder();
    dataCases();
  }

  void draw() {                                                                     /// draw the lines and graph of the line to be coordinated with the numbwe of cases 
    fill(0); 
    stroke(0);
    for (int i = 0; i<positionA.length; i++) {
      if (i<53) { 
        stroke(color(0, 255, 0));                                                       //  green to color the line 
        line(positionA[i].x, positionA[i].y, positionA[i+1].x, positionA[i+1].y);
        stroke(color(12, 71, 242));
        noStroke();
      }
      fill(color(0, 255, 0));                                                         //  green to higlight the line                                             
      ellipse(positionA[i].x, positionA[i].y, 2.5, 2.5); // green line 
      fill(color(12, 71, 242));
      fill(0);
    }
    stroke(color(0,0,0));                                                      //  black the line 
    fill(color(0,0,0));
    textFont(font);
    text("week "+week, positionA[week].x+7, positionA[53].y+5 );
    stroke(0);
    line(coordinates+20, 200-coordinates, coordinates+20, positionA[53].y);     // vertical line 
    line(coordinates+20, 200-coordinates, positionA[53].x, 200-coordinates);    // horizantal line  
    noStroke();
    stdFont = loadFont("Arial-Black-36.vlw");
    textFont(stdFont, 15);
  }


  void getStatesInOrder() {
    int rowCount = casesData.getRowCount();                                                                        // coded by aziz and revised by Parnav 
    for (int row = 0; row < rowCount; row++) {
      String aStateAbbrev = casesData.getRow(row).getString("state");

      if (aStateAbbrev.equals(stateAbbrev)) {
        for (int j=0; j<noOfStates; j++) {
          String myWeek = "" + j + "";
          int aCases = int(casesData.getRow(row).getString(myWeek));
         
          cases.add(aCases);
         
        }
      }
    }
   
  }

  void dataCases() {                                                           // coded by parnav and revised by aziz 
    coordinates = 5 ; 
    graphHeight = xLength - coordinates - coordinates;
    positionC = (yWidth - coordinates - coordinates) / (cases.size() - 1);
    maximumX = cases.get(0);
    for (int j=0; j<cases.size(); j++) {
      if (maximumX < cases.get(j))
        maximumX = cases.get(j);
    }


 
    for (int j =0; j<cases.size(); j++) {
      float adjCase = map(float(cases.get(j)), minimumX, maximumX, 0, graphHeight);
      float yPos = yWidth - coordinates - adjCase;
      float xPos = coordinates+20 +(positionC * j);
      positionA[j] = new PVector(xPos, yPos);
    }
  }
}
