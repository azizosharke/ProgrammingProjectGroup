// TEXT WAS ADDED BY ABDELAZIZ 
// CODE BY PRANAV 
// REVISED BY ARITRO 
// SUPERVISIED BY KEVIN
// Parnav added the exit button and the covid-19 link 

class Screen{
ArrayList screenWidgets;  
ArrayList widgetList;                           // creates a widget arraylist
PImage  bgImg;
boolean addIntro;
boolean addTrends= false;
boolean addSymptoms= false;
boolean addGraph= false;                      // this was added by kevin and rihsi to state cases and graph 
boolean addStates= false;
boolean addTX= false;
boolean addAZ= false;
boolean addCALI= false;
boolean addNEV= false;
boolean addUT= false;
boolean addOR= false;
boolean addWASH= false;
boolean addFLO= false;
boolean addKAN= false;
boolean addGEO= false;
boolean addOK= false;
boolean addHW= false;
boolean addIND= false;
boolean addOH= false;
boolean addWS= false;
boolean addVER= false;
boolean addTEN= false;
boolean addILL= false;
boolean addMASS= false;
boolean addNEB= false;
boolean addNCAR= false;
boolean addSCAR= false;
boolean addIDA= false;
boolean addMON= false;
boolean addWYOM= false;
boolean addCOL= false;
boolean addNMEX= false;
boolean addNDAC= false;
boolean addSDAC= false;
boolean addMIN= false;
boolean addIOWA= false;
boolean addMISSOU= false;
boolean addARK= false;
boolean addLOUS= false;
boolean addMICH= false;
boolean addKEN= false;
boolean addMISSIP= false;
boolean addALB= false;
boolean addMAIN= false;
boolean addNHAM= false;
boolean addRISL= false;
boolean addCONN= false;
boolean addDELA= false;
boolean addMARY= false;
boolean addWVIR= false;
boolean addVIR= false;
boolean addNY= false;
boolean addPEN= false;
boolean addALAS= false;

Screen(PImage  bgImg) {
  this. bgImg =  bgImg;
  widgetList = new ArrayList();
}

void draw() {
  background( bgImg);
  for(int i = 0; i < widgetList.size() ; i++) {                      //draws the widgets 
    Widget aWidget = (Widget) widgetList.get(i);
    aWidget.draw(); 
    if(addIntro)
    {
      fill ( 255);
      textSize(20);
      text("WELCOME",550,20);
      text(" TrackTcd says hello to you", 440,60);
      text("Please choose from these buttons below",400,100);
      image(img, 280, 440, 700, 200);
    }
    if(addSymptoms)       // added by pranav
    {
      fill(red);
      textSize(30);
      text("Symptoms of covid-19 ", 320, 50);
      fill(255);
      textSize(20);
      text("  Most common symptoms", 350, 110);
      text("•  Fever \n•  Cough \n•  Tiredness", 300, 140);
      text("  Less common symptoms", 350, 250);
      text("•  aches and pains\n•  sore throat\n•  diarrhea\n•  loss of smell / taste", 300,280);
      text("  Serious symptoms", 350, 430);
      text("•  difficulty in breathing or shortness of breath\n•  chest pain or pressure\n•  loss of speech or movement\n", 300,460); 
      
    }
    if(addTrends) 
    //Twiiter aspect of code added by kevin while supervised by rishi/aritro de
    {
      fill(white);   // title text colour
      textSize(30);  //title text size
      text("COVID-19 Twitter Trending Hashtags", 320, 50); // add title
      textSize(20);                        //text size for handles
      image(twitter, 100, 270, 200, 200);  // add twitter image
      
    }
    if (addTX)
    {
      fill(white);   // title text colour
      textSize(30);  //title text size
      text("Texas total cases = " + casesTexas,400, 50); // add title
    }
 
    if (addMIN)
    {
      fill(white);   // title text colour
      textSize(30);  //title text size
      text("Minnesota total cases = " + casesMinnesota,400, 50); // add title
    }
    if (addIOWA)
    {
      fill(white);   // title text colour
      textSize(30);  //title text size
      text("Iowa total cases = " + casesIowa,400, 50); // add title
    }
    if (addMISSOU)
    {
      fill(white);   // title text colour
      textSize(30);  //title text size
      text("Missouri total cases = " + casesMissouri,400, 50); // add title
    }
    if (addARK)
    {
      fill(white);   // title text colour
      textSize(30);  //title text size
      text("This data set does not include case numbers for this state.", 150, 350); // add title
    }
    if (addLOUS)
    {
      fill(white);   // title text colour
      textSize(30);  //title text size
      text("Louisiana = " + casesLouisiana,400, 50); // add title

    }
    if (addMICH)
    {
      fill(white);   // title text colour
      textSize(30);  //title text size
      text("This data set does not include case numbers for this state.", 150, 350); // add title
    }
    if (addKEN)
    {
      fill(white);   // title text colour
      textSize(30);  //title text size
      text("Kentucky = " + casesKentucy,400, 50); // add title
    }
    if (addMISSIP)
    {
      fill(white);   // title text colour
      textSize(30);  //title text size
      text("This data set does not include case numbers for this state.", 150, 350); // add title
    }
    if (addALB)
    {
      fill(white);   // title text colour
      textSize(30);  //title text size
      text("This data set does not include case numbers for this state.", 150, 350); // add title
    }
    if (addMAIN)
    {
      fill(white);   // title text colour
      textSize(30);  //title text size
      text("This data set does not include case numbers for this state.", 150, 350); // add title
    }
    if (addNHAM)
    {
      fill(white);   // title text colour
      textSize(30);  //title text size
      text("New Hampshire = " + casesNewHampshire,400, 50);
    }
    if (addRISL)
    {
      fill(white);   // title text colour
      textSize(30);  //title text size
      text("Rhode Island = " + casesRhodeIsland,400, 50); // add title
    }
    if (addCONN)
    {
      fill(white);   // title text colour
      textSize(30);  //title text size
      text("Connecticut = " + casesConnecticut, 400, 50); // add title

    }
    if (addDELA)
    {
      fill(white);   // title text colour
      textSize(30);  //title text size
      text("This data set does not include case numbers for this state.", 150, 350); // add title
    }
    if (addMARY)
    {
      fill(white);   // title text colour
      textSize(30);  //title text size
      text("Maryland = " + casesMaryland,400, 50); // add title
    }
    if (addWVIR)
    {
      fill(white);   // title text colour
      textSize(30);  //title text size
      text("This data set does not include case numbers for this state.", 150, 350); // add title
    }
    if (addVIR)
    {
      fill(white);   // title text colour
      textSize(30);  //title text size
      text("Virginia = " + casesVirginia,400, 50); // add title
    }
    if (addNY)
    {
      fill(white);   // title text colour
      textSize(30);  //title text size
      text("New York = " + casesNewYork, 400, 50); // add title
    }
    if (addPEN)
    {
      fill(white);   // title text colour
      textSize(30);  //title text size
      text("Pennsylvania = " + casesPennsylvania,400, 50); // add title
    }
    if (addALAS)
    {
      fill(white);   // title text colour
      textSize(30);  //title text size
      text("This data set does not include case numbers for this state.", 150, 350); // add title

    }
    if (addILL)
    {
      fill(white);   // title text colour
      textSize(30);  //title text size
      text("Illinois = " + casesIllinois,400, 50); // add title
    }
    if (addIDA)
    {
      fill(white);   // title text colour
      textSize(30);  //title text size
      text("This data set does not include case numbers for this state.", 150, 350); // add title
    }
    if (addMON)
    {
      fill(white);   // title text colour
      textSize(30);  //title text size
      text("This data set does not include case numbers for this state.", 150, 350); // add title

    }
    if (addWYOM)
    {
      fill(white);   // title text colour
      textSize(30);  //title text size
      text("This data set does not include case numbers for this state.", 150, 350); // add title
    }
    if (addCOL)
    {
      fill(white);   // title text colour
      textSize(30);  //title text size
      text("Colorado = " + casesColorado, 400, 50); // add title
 
    }
    if (addNMEX)
    {
      fill(white);   // title text colour
      textSize(30);  //title text size
      text("This data set does not include case numbers for this state.", 150, 350); // add title
    }
        if (addNDAC)
    {
      fill(white);   // title text colour
      textSize(30);  //title text size
      text("This data set does not include case numbers for this state.", 150, 350); // add title
    }
         if (addSDAC)
    {
      fill(white);   // title text colour
      textSize(30);  //title text size
      text("This data set does not include case numbers for this state.", 150, 350); // add title
    }
         if (addMASS)
    {
      fill(white);   // title text colour
      textSize(30);  //title text size
      text("Massachusetts = " + casesMassachusetts, 400, 50); // add title

    }
         if (addNEB)
    {
      fill(white);   // title text colour
      textSize(30);  //title text size
      text("Nebraska = " + casesNebraska, 400, 50); // add title
    }
           if (addNCAR)
    {
        background(0);
      fill(white);   // title text colour
      textSize(30);  //title text size
      text("North Carolina = " + casesNorthCarolina, 400, 50); // add title
    }
            if (addSCAR)
    {
      fill(white);   // title text colour
      textSize(30);  //title text size
      text("South Carolina = " + casesSouthCarolina, 400, 50); // add title
    }
   
     if (addWS)
    {
      fill(white);   // title text colour
      textSize(30);  //title text size
      text("Wisconsin = " + casesWisconsin, 400, 50); // add title
    }
     if (addVER)
    {
      fill(white);   // title text colour
      textSize(30);  //title text size
      text("Vermont = " + casesVermont, 400, 50); // add title
    }
     if (addTEN)
    {
      fill(white);   // title text colour
      textSize(30);  //title text size
      text("Tennessee = " + casesTennesse, 400, 50); // add title
    }
     if (addCALI)
    {
      fill(white);   // title text colour
      textSize(30);  //title text size
      text("California = " + casesCalifornia, 400, 50); // add title
    
    }
    if (addNEV)
    {
      fill(white);   // title text colour
      textSize(30);  //title text size
      text("Nevada = " + casesNevada, 400, 50); // add title
  
    }
    if (addHW)
    {
      fill(white);   // title text colour
      textSize(30);  //title text size
      text("Hawaii = " + casesHawaii, 400, 50); // add title
   
    }
    if (addIND)
    {;
      fill(white);   // title text colour
      textSize(30);  //title text size
      text("Indiana = " + casesIndiana, 400, 50); // add title

    }
    if (addOH)
    {
      fill(white);   // title text colour
      textSize(30);  //title text size
      text("Ohio = " + casesOhio, 400, 50); // add title
   
    }
    if (addUT)
    {
      fill(white);   // title text colour
      textSize(30);  //title text size
      text("Utah = " + casesUtah, 400, 50); // add title
    }
    if (addFLO)
    {
      fill(white);   // title text colour
      textSize(30);  //title text size
      text("Florida = " + casesFlorida, 400, 50); // add title
    }
     if (addKAN)
    {
      fill(white);   // title text colour
      textSize(30);  //title text size
      text("Kansas = " + casesKansas, 400, 50); // add title
    }
     if (addGEO)
    {
      fill(white);   // title text colour
      textSize(30);  //title text size
      text("Georgia = " + casesGeorgia, 400, 50); // add title
    }
     if (addOK)
    {
      fill(white);   // title text colour
      textSize(30);  //title text size
      text("Oklahoma = " + casesOklahoma, 400, 50); // add title
    }
      if (addOR)
    {
      fill(white);   // title text colour
      textSize(30);  //title text size
      text("Oregon = " + casesOregon, 400, 50); // add title
    }
      if (addWASH)
    {
      fill(white);   // title text colour
      textSize(30);  //title text size
      text("Washington = " + casesWashington, 400, 50); // add title
    }
    if (addAZ)
    {
      fill(white);   // title text colour
      textSize(30);  //title text size
      text("Arizona = " + casesArizona, 400, 50); // add title
 
    }
      if(addGraph)
    {
      noStroke();      // 551.1
      fill(Blue);
      rect(15,0,1,720);
      rect(0,650,1280,1);
      rect(0,650-(5.511*10),1280,1);
      text("100", 15, 650-(5.511*10));
      rect(0,650-(5.511*20),1280,1);
      text("200", 15, 650-(5.511*20));
      rect(0,650-(5.511*30),1280,1);
      text("300", 15, 650-(5.511*30));
      rect(0,650-(5.511*40),1280,1);
      text("400", 15, 650-(5.511*40));
      rect(0,650-(5.511*50),1280,1);
      text("500", 15, 650-(5.511*50));
      rect(0,650-(5.511*60),1280,1);
      text("600", 15, 650-(5.511*60));
      rect(0,650-(5.511*70),1280,1);
      text("700", 15, 650-(5.511*70));
      rect(0,650-(5.511*80),1280,1);
      text("800", 15, 650-(5.511*80));
      rect(0,650-(5.511*90),1280,1);
      text("900", 15, 650-(5.511*90));
      rect(0,650-(5.511*100),1280,1);
      text("1000", 15, 650-(5.511*100));
      rect(0,650-(5.511*110),1280,1);
      text("1100", 15, 650-(5.511*110));
      rect(0,650-(5.511*120),1280,1);
      text("1200", 15, 650-(5.511*120));
      
      barArizona.draw();
      barCalifornia.draw();
      barColorado.draw();
      barConnecticut.draw();
      barDistrictOfColumbia.draw();
      barFlorida.draw();
      barGeorgia.draw();
      barHawaii.draw();
      barIllinois.draw();
      barIndiana.draw();
      barIowa.draw();
      barKansas.draw();
      barKentucy.draw();
      barLouisiana.draw();
      barMaryland.draw();
      barMassachusetts.draw();
      barMinnesota.draw();
      barMissouri.draw();
      barNebraska.draw();
      barNevada.draw();
      barNewHampshire.draw();
      barNewJersey.draw();
      barNewYork.draw();
      barNorthCarolina.draw();
      barOhio.draw();
      barOklahoma.draw();
      barOregon.draw();
      barPennsylvania.draw();
      barRhodeIsland.draw();
      barSouthCarolina.draw();
      barTennesse.draw();
      barTexas.draw();
      barUtah.draw();
      barVermont.draw();
      barVirginia.draw();
      barWashington.draw();
      barWisconsin.draw();
      
      translate(barArizona.x + 21,barArizona.y);
      rotate(-HALF_PI);
      fill(white);
      text("Arizona = " + casesArizona, 0, 0);
      
      fill(white);
      text("California = " + casesCalifornia, 0, 34 );
      
      fill(white);
      text("Colorado = " + casesColorado, 0, 68);
      
      fill(white);
      text("Connecticut = " + casesConnecticut, 0, 34*3);
      
      fill(white);
      text("District Of Columbia = " + casesDistrictOfColumbia,0,34*4);
      
      fill(white);
      text("Florida = " + casesFlorida,0,34*5);
      
      fill(white);
      text("Georgia = " + casesGeorgia,0,34*6);
      
      fill(white);
      text("Hawaii = " + casesHawaii,0,34*7);
      
      fill(white);
      text("Illinois = " + casesIllinois,0,34*8);
      
      fill(white);
      text("Indiana = " + casesIndiana,0,34*9);
      
      fill(white);
      text("Iowa = " + casesIowa,0,34*10);
      
      fill(white);
      text("Kansas = " + casesKansas,0,34*11);
      
      fill(white);
      text("Kentucky = " + casesKentucy,0,34*12);
      
      fill(white);
      text("Louisiana = " + casesLouisiana,0,34*13);
      
      fill(white);
      text("Maryland = " + casesMaryland,0,34*14);
      
      fill(white);
      text("Massachusetts = " + casesMassachusetts,0,34*15);
      
      fill(white);
      text("Minnesota = " + casesMinnesota,0,34*16);
      
      fill(white);
      text("Missouri = " + casesMissouri,0,34*17);
      
      fill(white);
      text("Nebraska = " + casesNebraska,0,34*18);
      
      fill(white);
      text("Nevada = " + casesNevada,0,34*19);
      
      fill(white);
      text("New Hampshire = " + casesNewHampshire,0,34*20);
      
      fill(white);
      text("New Jersey = " + casesNewJersey,0,34*21);
      
      fill(white);
      text("New York = " + casesNewYork,0,34*22);
      
      fill(white);
      text("North Carolina = " + casesNorthCarolina,0,34*23);
      
      fill(white);
      text("Ohio = " + casesOhio,0,34*24);
      
      fill(white);
      text("Oklahoma = " + casesOklahoma,0,34*25);
      
      fill(white);
      text("Oregon = " + casesOregon,0,34*26);
      
      fill(white);
      text("Pennsylvania = " + casesPennsylvania,0,34*27);
      
      fill(white);
      text("Rhode Island = " + casesRhodeIsland,0,34*28);
      
      fill(white);
      text("South Carolina = " + casesSouthCarolina,0,34*29);
      
      fill(white);
      text("Tennessee = " + casesTennesse,0,34*30);
      
      fill(white);
      text("Texas = " + casesTexas,0,34*31);
      
      fill(white);
      text("Utah = " + casesUtah,0,34*32);
      
      fill(white);
      text("Vermont = " + casesVermont,0,34*33);
      
      fill(white);
      text("Virginia = " + casesVirginia,0,34*34);
      
      fill(white);
      text("Washington = " + casesWashington,0,34*35);
      
      fill(white);
      text("Wisconsin = " + casesWisconsin,0,34*36);
      
    }
  }
  
  
  
}
 int getEvent(int mx, int my) {                                   // added by aziz 
    for (int i=0; i<screenWidgets.size(); i++) {
      Widget aWidget = (Widget) screenWidgets.get(i);
      int event = aWidget.getEvent(mouseX, mouseY);
      if (event != EVENT_NULL) {
        return event;
      }
    }
    return EVENT_NULL;
  }
   ArrayList getWidgets() {
    return screenWidgets;
  }
   

void addSymptoms()             // added by both kevin and parnav 
{
  addSymptoms=true;
}
void addTrends()
{
  addTrends=true;
}

void addIntro(){
addIntro=true;
  
}

void donotAddIntro()
{
  addIntro= false;
  
}
void addILL()
{
  addILL=true;
}
void addMIN()
{
  addMIN=true;
}
void addIOWA()
{
  addIOWA=true;
}
void addMISSOU()
{
  addMISSOU=true;
}
void addARK()
{
  addARK=true;
}
void addLOUS()
{
  addLOUS=true;
}
void addMICH()
{
  addMICH=true;
}
void addKEN()
{
  addKEN=true;
}
void addMISSIP()
{
  addMISSIP=true;
}
void addALB()
{
  addALB=true;
}
void addMAIN()
{
  addMAIN=true;
}
void addNHAM()
{
  addNHAM=true;
}
void addRISL()
{
  addRISL=true;
}
void addCONN()
{
  addCONN=true;
}
void addDELA()
{
  addDELA=true;
}
void addMARY()
{
  addMARY=true;
}
void addWVIR()
{
  addWVIR=true;
}
void addVIR()
{
  addVIR=true;
}
void addNY()
{
  addNY=true;
}
void addPEN()
{
  addPEN=true;
}
void addALAS()
{
  addALAS=true;
}
void addIDA()
{
  addIDA=true;
}
void addMON()
{
  addMON=true;
}
void addWYOM()
{
  addWYOM=true;
}
void addCOL()
{
  addCOL=true;
}
void addNMEX()
{
  addNMEX=true;
}
void addNDAC()
{
  addNDAC=true;
}
void addSDAC()
{
  addSDAC=true;
}
void addMASS()
{
  addMASS=true;
}
void addNEB()
{
  addNEB=true;
}
void addNCAR()
{
  addNCAR=true;
}
void addSCAR()
{
  addSCAR=true;
}

void addFLO()
{
  addFLO=true;
}
void addHW()
{
  addHW=true;
}
void addIND()
{
  addIND=true;
}
void addOH()
{
  addOH=true;
}
void addKAN()
{
  addKAN=true;
}
void addGEO()
{
  addGEO=true;
}
void addOK()
{
  addOK=true;
}
void addWS()
{
  addWS=true;
}
void addVER()
{
  addVER=true;
}
void addTEN()
{
  addTEN=true;
}

void addCALI()
{
  addCALI=true;
}
void addUT()
{
  addUT=true;
}
void addOR()
{
  addOR=true;
}
void addWASH()
{
  addWASH=true;
}

void addNEV()
{
  addNEV=true;
}

void addTX()
{
  addTX=true;
}
void addAZ()
{
  addAZ=true;
}
void addGraphofcounty()
{
  addGraph= true;
}
void addWidget(Widget widget) {
  widgetList.add(widget);                                          // adds the widgets
}


int getEvent() {
  int event = 0;
  for(int i = 0; i < widgetList.size() ; i++) {
    Widget aWidget = (Widget) widgetList.get(i);                     //returns the event number
    event = aWidget.getEvent(mouseX, mouseY);
    if(event != EVENT_NULL)
    break;
  }
  return event;
}

}
