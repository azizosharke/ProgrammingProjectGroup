// this class was coded by aziz and by the help of parnav and revised by kevin and aritro.

class DrawMap 
{
  PShape USMap;
  PShape state;
  PGraphics reader;
  Table data;
  Table cases;
  float blueF;
  color colourThree;
  color colourOne, colourTwo;
  float dataMin = -7;
  float dataMax = 11;
  color[] colorArray = new color[]{color(0,0,255),color(0,0,255)};

  DrawMap()
  {
    reader = createGraphics(width, height, JAVA2D);                                                // to draw te map and the weekly cases 
    USMap = loadShape("usa-wikipedia.svg");
    data = loadTable("StateAbbreviations.csv", "header");
    cases = loadTable("StateWeeklyCases.csv", "header");

  }

  void draw(int week )                                                                               // to draw the box near the map to put the data
  {
    background(255);
    noStroke();
    USMap.disableStyle();
    int rowCount = data.getRowCount();
    //for loop traverses teh stateabbreviations.csv
    for (int row = 0; row < rowCount; row++) {
      String abbrev = data.getRow(row).getString("Code");
      String stateName = data.getRow(row).getString("State");
      state = USMap.getChild(abbrev);
      reader.beginDraw();
      reader.background(255);
      colourOne = row;
     reader.noStroke();
      reader.fill(colourOne);
      reader.shape(state, firstMAP, secondMAP);
     reader.endDraw();
      colourTwo =reader.get(mouseX, mouseY);
      blueF = colourTwo >> 16 & 0xFF;


      if (state != null)
      {
        stroke(255);
        TableRow currentRow = cases.getRow(row);
        int cases    = Math.round(currentRow.getFloat("30"));                               
        int colorNum = cases /colourFour;                       
        colourThree = colorArray[colorNum];                                    // color of the map 
        fill(colourThree);  

        if (blueF == row)
        {
          println(abbrev);  
          details button = new details(stateName, abbrev, parseInt(week));              // details to be presented     
          button.draw(); 
           
          graph theGraph = new graph(abbrev, parseInt(week));
          theGraph.draw();                                                        // graph 
          fill(160);
        }
        shape(state, firstMAP, secondMAP);                                    // map to be implemented 
      }
    }
  }
}
