// .... 

// this code was written by Abdelaziz Abushark 
//Pranav added widgets and screens to aziz's code
// supervised by aritro and kevin
// added the screen background and covid -19 banner 
ScrollRect scrollRect;        // the vertical scroll bar
float heightOfCanvas = 3000;  // realHeight of the entire scene  
Table table;                                           // table for the data 
PFont stdFont;
PFont stdFontt;
Screen screen1, screen2, screen3, currentscreen, screen4, screen5, screen6, screen7, screen8, screen9, screen10, screen11, screen12, screen13, screen14, screen15, screen16, screen17,
screen18, screen19, screen20, screen21, screen22, screen23, screen24, screen25, screen26, screen27, screen28, screen29, screen30, screen31, screen32, screen33, screen34, screen35, 
screen36, screen37, screen38, screen39, screen40, screen41, screen42, screen43, screen44, screen45, screen46, screen47, screen48, screen49, screen50, screen51, screen52, screen53, screen54,
screen55, screen56, screen57, screen58, screen59, screen60, screen61, screen62, screen63, screen64, screen65, screen66, screen67, screen68, screen69, screen70, screen71, screen72, screen73,
screen74, screen75, screen76, screen77, screen78, screen79, screen80, screen81, screen82, screen83, screen84, screen85, screen86, screen87, screen88, screen89, screen90, screen91, screen92, 
screen93, screen94, screen95, screen96, screen97, screen98, screen99, screen100, screen101, screen102, screen103, screen104;
int rows ; 
float v = 0.0001;                                      // rows and columns 
int columns ; 
ArrayList<DataClass> data;                             // arraylist for data                                  
PFont font;                                            // font 
float f =0.0001;
int z = 0 ;
int x = 650;
int y ;
boolean pressedTab;
PImage img ;
PImage bgImg;
PImage bgImg2;
PImage twitter;
int g =0;
MouseEvent event;
MouseEvent event2;
boolean overButton;                                   // checks if the mouse button is over the image
boolean drawMap;
PImage graphImg;                                      // used for loading the graph image
PImage us_map;
int rectLength; 
int rectWidth; 
int xposOfButton;
int yposOfButton;
boolean hasScrolled;
color black = color(0);
color white = color(255);
color red = color(255,0,0);                            //defining the colours
color green = color(0,255,0);
color darkblue = color(0,0,200);
color yellow= color(255, 255, 0);
color Blue= color(10,255,255);
color grey = color(150);
color pink= color(255,0,255);
boolean homescreen;                                 // is true if the list is not pressed and false if the list is pressed
PShape shape;
ArrayList myWidgets;
TextWidget focus;
float graphX = 34;
ArrayList<graphClass> graphs = new ArrayList<graphClass>();
Widget widget5;
graphClass barArizona;                               // all graph class was added by aritro 
graphClass barCalifornia;
graphClass barColorado;
graphClass barConnecticut;
graphClass barDistrictOfColumbia;
graphClass barFlorida;
graphClass barGeorgia;
graphClass barHawaii;
graphClass barIllinois;
graphClass barIndiana;
graphClass barIowa;
graphClass barKansas;
graphClass barKentucy;
graphClass barLouisiana;
graphClass barMaryland;
graphClass barMassachusetts;
graphClass barMinnesota;
graphClass barMissouri;
graphClass barNebraska;
graphClass barNevada;
graphClass barNewHampshire;
graphClass barNewJersey;
graphClass barNewYork;
graphClass barNorthCarolina;
graphClass barOhio;
graphClass barOklahoma;
graphClass barOregon;
graphClass barPennsylvania;
graphClass barRhodeIsland;
graphClass barSouthCarolina;
graphClass barTennesse;
graphClass barTexas;
graphClass barUtah;
graphClass barVermont;
graphClass barVirginia;
graphClass barWashington;
graphClass barWisconsin;

int casesArizona = 0;                       // added by aritro and kevin 
int casesCalifornia = 0;
int casesColorado = 0;
int casesConnecticut = 0;
int casesDistrictOfColumbia = 0;
int casesFlorida = 0;
int casesGeorgia = 0;
int casesHawaii = 0;
int casesIllinois = 0;
int casesIndiana = 0;
int casesIowa = 0;
int casesKansas = 0;
int casesKentucy = 0;
int casesLouisiana = 0;
int casesMaryland = 0;
int casesMassachusetts = 0;
int casesMinnesota = 0;
int casesMissouri = 0;
int casesNebraska = 0;
int casesNevada = 0;
int casesNewHampshire = 0;
int casesNewJersey = 0;
int casesNewYork = 0;
int casesNorthCarolina = 0;
int casesOhio = 0;
int casesOklahoma = 0;
int casesOregon = 0;
int casesPennsylvania = 0;
int casesRhodeIsland = 0;
int casesSouthCarolina = 0;
int casesTennesse = 0;
int casesTexas = 0;
int casesUtah = 0;
int casesVermont = 0;
int casesVirginia = 0;
int casesWashington = 0;
int casesWisconsin = 0;
DrawMap map;
Decider theslider;

void settings() {                                         // screen size                // void settings and void setup was added by aziz with the help of kevin and aritro 
  size(SCREEN_X, SCREEN_Y) ;
}
void setup() { 
   us_map = loadImage("us_map.png");
   PFont stdFont;
  stdFont = loadFont("BookmanOldStyle-48.vlw");
  textFont(stdFont);
  stdFontt = loadFont("AgencyFB-Bold-30.vlw");
  textFont(stdFontt);
   bgImg2 = loadImage("united-states-map-with-state-names.gif");
  bgImg2.resize(SCREEN_X, SCREEN_Y);
  TextWidget textedit = new TextWidget(1080,10,180,40,"search bar",color(200,0,0),stdFont,TEXT_WIDGET,10);
  focus = null;
  myWidgets = new ArrayList();                                                                     //loading widgets and screens
   myWidgets.add(textedit);
  bgImg = loadImage("mapA.jpg");
   screen1 =new Screen(bgImg); 
   screen1.addIntro();
   screen2= new Screen(bgImg);
   screen3= new Screen(bgImg);
   screen4= new Screen(bgImg);
   screen5= new Screen(bgImg);
   screen6 = new Screen(bgImg2);
   screen7= new Screen(bgImg);
   screen8= new Screen(bgImg);
   screen9= new Screen(bgImg);
   screen10= new Screen(bgImg);
   screen11= new Screen(bgImg);
   screen12= new Screen(bgImg);
   screen13= new Screen(bgImg);
   screen14= new Screen(bgImg);
   screen15= new Screen(bgImg);
   screen16= new Screen(bgImg);
   screen17= new Screen(bgImg);
   screen18= new Screen(bgImg);
   screen19= new Screen(bgImg);
   screen20= new Screen(bgImg);
   screen21= new Screen(bgImg);
   screen22= new Screen(bgImg);
   screen23= new Screen(bgImg);
   screen24= new Screen(bgImg);
   screen25= new Screen(bgImg);
   screen26= new Screen(bgImg);
   screen27= new Screen(bgImg);
   screen28= new Screen(bgImg);
   screen29= new Screen(bgImg);
   screen30= new Screen(bgImg);
   screen31= new Screen(bgImg);
   screen32= new Screen(bgImg);
   screen33= new Screen(bgImg);
   screen34= new Screen(bgImg);
   screen35= new Screen(bgImg);
   screen36= new Screen(bgImg);
   screen37= new Screen(bgImg);
   screen38= new Screen(bgImg);
   screen39= new Screen(bgImg);
   screen40= new Screen(bgImg);
   screen41= new Screen(bgImg);
   screen42= new Screen(bgImg);
   screen43= new Screen(bgImg);
   screen43= new Screen(bgImg);
   screen44= new Screen(bgImg);
   screen45= new Screen(bgImg);
   screen46= new Screen(bgImg);
   screen47= new Screen(bgImg);
   screen48= new Screen(bgImg);
   screen49= new Screen(bgImg);
   screen50= new Screen(bgImg);
   screen51= new Screen(bgImg);
   screen52= new Screen(bgImg);
   screen53= new Screen(bgImg);
   screen54= new Screen(bgImg);
   screen55= new Screen(bgImg);
   screen56= new Screen(bgImg);
   screen57= new Screen(bgImg);
   screen58= new Screen(bgImg);
   screen59= new Screen(bgImg);
   screen60= new Screen(bgImg);
   screen61= new Screen(bgImg);
   screen62= new Screen(bgImg);
   screen63= new Screen(bgImg);
   screen64= new Screen(bgImg);
   screen65= new Screen(bgImg);
   screen66= new Screen(bgImg);
   screen67= new Screen(bgImg);
   screen68= new Screen(bgImg);
   screen69= new Screen(bgImg);
   screen70= new Screen(bgImg);
   screen71= new Screen(bgImg);
   screen72= new Screen(bgImg);
   screen73= new Screen(bgImg);
   screen74= new Screen(bgImg);
   screen75= new Screen(bgImg);
   screen76= new Screen(bgImg);
   screen77= new Screen(bgImg);
   screen78= new Screen(bgImg);
   screen79= new Screen(bgImg);
   screen80= new Screen(bgImg);
   screen81= new Screen(bgImg);
   screen82= new Screen(bgImg);
   screen83= new Screen(bgImg);
   screen84= new Screen(bgImg);
   screen85= new Screen(bgImg);
   screen86= new Screen(bgImg);
   screen87= new Screen(bgImg);
   screen88= new Screen(bgImg);
   screen89= new Screen(bgImg);
   screen90= new Screen(bgImg);
   screen91= new Screen(bgImg);
   screen92= new Screen(bgImg);
   screen93= new Screen(bgImg);
   screen94= new Screen(bgImg);
   screen95= new Screen(bgImg);
   screen96= new Screen(bgImg);
   screen97= new Screen(bgImg);
   screen98= new Screen(bgImg);
   screen99= new Screen(bgImg);
   screen100= new Screen(bgImg);
   screen101= new Screen(bgImg);
   screen102= new Screen(bgImg);
   screen103= new Screen(bgImg);
   screen104= new Screen(bgImg);
   
   
  scrollRect = new ScrollRect();
    map = new DrawMap();        // map 
   theslider = new Decider();  // weekly decider 
   img = loadImage("covid19.jpg");
   graphImg= loadImage("Graph.png");
   twitter = loadImage("twitterlogo.jpg");
   currentscreen= screen1;
   xposOfButton= 100;
   yposOfButton= 1000;
   shape= createShape(RECT,xposOfButton, yposOfButton, 150, 40);
   shape.setFill(yellow);
   Widget widget1, widget2, widget3, widget4,widget6, widget7, widget8, widget9, widget10, widget11, widget12, widget13, widget14, widget15, widget16, widget17, widget18, widget19, widget20,
   widget21, widget22, widget23, widget24, widget25, widget26, widget27, widget28, widget29, widget30, widget31, widget32, widget33, widget34, widget35, widget36, widget37, widget38, 
   widget39, widget40, widget41, widget42, widget43, widget44 ,widget45, widget46, widget47, widget48, widget49, widget50, widget51, widget52, widget53, widget54, widget55, widget56, widget57, 
   widget58, widget59, widget60, widget61, widget62, widget63, widget64, widget65, widget66, widget67, widget68, widget69, widget70, widget71, widget72, widget73, widget74, widget75, widget76, 
   widget77, widget78, widget79, widget80, widget81, widget82, widget83, widget84, widget85, widget86, widget87, widget88, widget89, widget90, widget91, widget92, widget93, widget94, widget95,
   widget96, widget97, widget98, widget99, widget100, widget101, widget102, widget103, widget104, widget105, widget106, widget107, widget108, widget109, widget110, widget111, widget112;
   strokeWeight(5);
   widget1= new Widget(330,250, 250, 40, "List", color(Blue), stdFont, EVENT_BUTTON1);                                  // buttons to be pressed 
   widget2=new Widget(200,350,250,40, "exit", color(green), stdFont, EVENT_BUTTON2);
   widget3=new Widget(600,250,250,40, "graph", color(darkblue), stdFont, EVENT_BUTTON3);                                    // widgets to use fot the program ( states , opening , ending)
   widget4=new Widget(500,350,250,40, "Symptoms", color(red), stdFont, EVENT_BUTTON4);
   widget5= new Widget(1100, 650, 150, 40, "<--- back", color(red), stdFont, EVENT_BUTTON5);
   widget6= new Widget(330, 150, 250, 40, "#CovidTrending", color(red), stdFont, EVENT_BUTTON6);
   widget7= new Widget(380, 150, 450, 40, "#Covid19", color(Blue), stdFont, EVENT_BUTTON7);
   widget8= new Widget(380, 250, 450, 40, "#Covid19ireland", color(Blue), stdFont, EVENT_BUTTON8);
   widget9= new Widget(380, 350, 450, 40, "#Covid19USA", color(Blue), stdFont, EVENT_BUTTON9);
   widget10= new Widget(380, 550, 450, 40, "#COVIDSecondWave", color(Blue), stdFont, EVENT_BUTTON10);
   widget11= new Widget(380, 450, 450, 40, "#COVID19SWEEDEN/Sverige", color(Blue), stdFont, EVENT_BUTTON11);
   widget12 = new Widget(600,150,250,40 , "State by State" , color(Blue) ,stdFont,EVENT_BUTTON12);
   widget13= new Widget(550, 550, 10, 10, "", color(darkblue), stdFontt, EVENT_BUTTON13);
   widget14= new Widget(250, 450, 10, 10, "", color(darkblue), stdFontt, EVENT_BUTTON14);
   widget15= new Widget(1100, 650, 150, 40, "<--back", color(red), stdFont, EVENT_BUTTON15);
   widget16= new Widget(120, 370, 10, 10, "", color(darkblue), stdFontt, EVENT_BUTTON16);
   widget17= new Widget(170, 310, 10, 10, "", color(darkblue), stdFontt, EVENT_BUTTON17);
   widget18= new Widget(270, 330, 10, 10, "", color(darkblue), stdFontt, EVENT_BUTTON18);
   widget19= new Widget(120, 180, 10, 10, "", color(darkblue), stdFontt, EVENT_BUTTON19);
   widget20= new Widget(190, 100, 10, 10, "", color(darkblue), stdFontt, EVENT_BUTTON20);
   widget21= new Widget(1000, 600, 10, 10, "", color(darkblue), stdFontt, EVENT_BUTTON21);
   widget22= new Widget(580, 375, 10, 10, "", color(darkblue), stdFontt, EVENT_BUTTON22);
   widget23= new Widget(950, 510, 10, 10, "", color(darkblue), stdFontt, EVENT_BUTTON23);
   widget24= new Widget(595, 450, 10, 10, "", color(darkblue), stdFontt, EVENT_BUTTON24);
   widget25= new Widget(330, 650, 10, 10, "", color(darkblue), stdFontt, EVENT_BUTTON25);
   widget26= new Widget(845, 330, 10, 10, "", color(darkblue), stdFontt, EVENT_BUTTON26);
   widget27= new Widget(920, 320, 10, 10, "", color(darkblue), stdFontt, EVENT_BUTTON27);
   widget28= new Widget(845, 435, 10, 10, "", color(darkblue), stdFontt, EVENT_BUTTON28);
   widget29= new Widget(1115, 180, 10, 10, "", color(darkblue), stdFontt, EVENT_BUTTON29);
   widget30= new Widget(760, 210, 10, 10, "", color(darkblue), stdFontt, EVENT_BUTTON30);
   widget31= new Widget(790, 330, 10, 10, "", color(darkblue), stdFontt, EVENT_BUTTON31);
   widget32= new Widget(1130, 217, 10, 10, "", color(darkblue), stdFontt, EVENT_BUTTON32);
   widget33= new Widget(580, 300, 10, 10, "", color(darkblue), stdFontt, EVENT_BUTTON33);
   widget34= new Widget(1050, 425, 10, 10, "", color(darkblue), stdFontt, EVENT_BUTTON34);
   widget35= new Widget(990, 475, 10, 15, "", color(darkblue), stdFontt, EVENT_BUTTON35);
   widget36= new Widget(270, 220, 15, 10, "", color(darkblue), stdFontt, EVENT_BUTTON36);
   widget37= new Widget(370, 155, 10, 10, "", color(darkblue), stdFontt, EVENT_BUTTON37);
   widget38= new Widget(400, 250, 10, 10, "", color(darkblue), stdFontt, EVENT_BUTTON38);
   widget39= new Widget(400, 350, 10, 10, "", color(darkblue), stdFontt, EVENT_BUTTON39);
   widget40= new Widget(400, 470, 10, 10, "", color(darkblue), stdFontt, EVENT_BUTTON40);
   widget41= new Widget(540, 155, 10, 10, "", color(darkblue), stdFontt, EVENT_BUTTON41);
   widget42= new Widget(540, 230, 10, 10, "", color(darkblue), stdFontt, EVENT_BUTTON42);
   widget43= new Widget(670, 185, 10, 10, "", color(darkblue), stdFontt, EVENT_BUTTON43);
   widget44= new Widget(700, 290, 10, 10, "", color(darkblue), stdFontt, EVENT_BUTTON44);
   widget45= new Widget(720, 390, 10, 10, "", color(darkblue), stdFontt, EVENT_BUTTON45);
   widget46= new Widget(720, 470, 10, 10, "", color(darkblue), stdFontt, EVENT_BUTTON46);
   widget47= new Widget(720, 520, 10, 10, "", color(darkblue), stdFontt, EVENT_BUTTON47);
   widget48= new Widget(880, 250, 10, 10, "", color(darkblue), stdFontt, EVENT_BUTTON48);
   widget49= new Widget(890, 370, 10, 10, "", color(darkblue), stdFontt, EVENT_BUTTON49);
   widget50= new Widget(800, 500, 10, 10, "", color(darkblue), stdFontt, EVENT_BUTTON50);
   widget51= new Widget(870, 510, 10, 10, "", color(darkblue), stdFontt, EVENT_BUTTON51);
   widget52= new Widget(1175, 150, 10, 10, "", color(darkblue), stdFontt, EVENT_BUTTON52);
   widget53= new Widget(1145, 180, 10, 10, "", color(darkblue), stdFontt, EVENT_BUTTON53);
   widget54= new Widget(1265, 247, 10, 10, "", color(darkblue), stdFontt, EVENT_BUTTON54);
   widget55= new Widget(1130, 233, 10, 10, "", color(darkblue), stdFontt, EVENT_BUTTON55);
   widget56= new Widget(1202, 320, 10, 10, "", color(darkblue), stdFontt, EVENT_BUTTON56);
   widget57= new Widget(1202, 332, 10, 10, "", color(darkblue), stdFontt, EVENT_BUTTON57);
   widget58= new Widget(975, 355, 10, 10, "", color(darkblue), stdFontt, EVENT_BUTTON58);
   widget59= new Widget(1010, 370, 10, 10, "", color(darkblue), stdFontt, EVENT_BUTTON59);
   widget60= new Widget(1065, 200, 10, 10, "", color(darkblue), stdFontt, EVENT_BUTTON60);
   widget61= new Widget(1030, 282, 10, 10, "", color(darkblue), stdFontt, EVENT_BUTTON61);
   widget62= new Widget(170, 635, 10, 10, "", color(darkblue), stdFontt, EVENT_BUTTON62);
   widget63= new Widget(790, 350, 250, 40, "Weekly cases", color(pink), stdFont, EVENT_BUTTON63);
   widget64= new Widget(360, 350, 520, 50, "Current Covid Guidlines TX", color(pink), stdFont, EVENT_BUTTON64);                                                        // coded by Kevin and Aritro in 30 minute intervals
   widget65= new Widget(360, 350, 520, 50, "Current Covid Guidlines AZ", color(pink), stdFont, EVENT_BUTTON65);   
   widget66= new Widget(360, 350, 520, 50, "Current Covid Guidlines CA", color(pink), stdFont, EVENT_BUTTON66);   
   widget67= new Widget(360, 350, 520, 50, "Current Covid Guidlines NV", color(pink), stdFont, EVENT_BUTTON67);   
   widget68= new Widget(360, 350, 520, 50, "Current Covid Guidlines UT", color(pink), stdFont, EVENT_BUTTON68);   
   widget69= new Widget(360, 350, 520, 50, "Current Covid Guidlines OR", color(pink), stdFont, EVENT_BUTTON69);   
   widget70= new Widget(360, 350, 520, 50, "Current Covid Guidlines WA", color(pink), stdFont, EVENT_BUTTON70);   
   widget71= new Widget(360, 350, 520, 50, "Current Covid Guidlines FL", color(pink), stdFont, EVENT_BUTTON71);   
   widget72= new Widget(360, 350, 520, 50, "Current Covid Guidlines KS", color(pink), stdFont, EVENT_BUTTON72);   
   widget73= new Widget(360, 350, 520, 50, "Current Covid Guidlines GA", color(pink), stdFont, EVENT_BUTTON73);   
   widget74= new Widget(360, 350, 520, 50, "Current Covid Guidlines OK", color(pink), stdFont, EVENT_BUTTON74);   
   widget75= new Widget(360, 350, 520, 50, "Current Covid Guidlines HI", color(pink), stdFont, EVENT_BUTTON75);   
   widget76= new Widget(360, 350, 520, 50, "Current Covid Guidlines IN", color(pink), stdFont, EVENT_BUTTON76);   
   widget77= new Widget(360, 350, 520, 50, "Current Covid Guidlines OH", color(pink), stdFont, EVENT_BUTTON77);   
   widget78= new Widget(360, 350, 520, 50, "Current Covid Guidlines TN", color(pink), stdFont, EVENT_BUTTON78);   
   widget79= new Widget(360, 350, 520, 50, "Current Covid Guidlines VT", color(pink), stdFont, EVENT_BUTTON79);   
   widget80= new Widget(360, 350, 520, 50, "Current Covid Guidlines WI", color(pink), stdFont, EVENT_BUTTON80);   
   widget81= new Widget(360, 350, 520, 50, "Current Covid Guidlines IL", color(pink), stdFont, EVENT_BUTTON81);   
   widget82= new Widget(360, 350, 520, 50, "Current Covid Guidlines MA", color(pink), stdFont, EVENT_BUTTON82);   
   widget83= new Widget(360, 350, 520, 50, "Current Covid Guidlines NE", color(pink), stdFont, EVENT_BUTTON83);   
   widget84= new Widget(360, 350, 520, 50, "Current Covid Guidlines NC", color(pink), stdFont, EVENT_BUTTON84);   
   widget85= new Widget(360, 350, 520, 50, "Current Covid Guidlines SC", color(pink), stdFont, EVENT_BUTTON85);   
   widget86= new Widget(360, 350, 520, 50, "Current Covid Guidlines ID", color(pink), stdFont, EVENT_BUTTON86);   
   widget87= new Widget(360, 350, 520, 50, "Current Covid Guidlines MT", color(pink), stdFont, EVENT_BUTTON87);   
   widget88= new Widget(360, 350, 520, 50, "Current Covid Guidlines WY", color(pink), stdFont, EVENT_BUTTON88);   
   widget89= new Widget(360, 350, 520, 50, "Current Covid Guidlines CO", color(pink), stdFont, EVENT_BUTTON89);   
   widget90= new Widget(360, 350, 520, 50, "Current Covid Guidlines NM", color(pink), stdFont, EVENT_BUTTON90);   
   widget91= new Widget(360, 350, 520, 50, "Current Covid Guidlines ND", color(pink), stdFont, EVENT_BUTTON91);   
   widget92= new Widget(360, 350, 520, 50, "Current Covid Guidlines SD", color(pink), stdFont, EVENT_BUTTON92);   
   widget93= new Widget(360, 350, 520, 50, "Current Covid Guidlines MN", color(pink), stdFont, EVENT_BUTTON93);   
   widget94= new Widget(360, 350, 520, 50, "Current Covid Guidlines IA", color(pink), stdFont, EVENT_BUTTON94);   
   widget95= new Widget(360, 350, 520, 50, "Current Covid Guidlines MO", color(pink), stdFont, EVENT_BUTTON95);   
   widget96= new Widget(360, 350, 520, 50, "Current Covid Guidlines AR", color(pink), stdFont, EVENT_BUTTON96);   
   widget97= new Widget(360, 350, 520, 50, "Current Covid Guidlines LA", color(pink), stdFont, EVENT_BUTTON97);   
   widget98= new Widget(360, 350, 520, 50, "Current Covid Guidlines MI", color(pink), stdFont, EVENT_BUTTON98);   
   widget99= new Widget(360, 350, 520, 50, "Current Covid Guidlines KY", color(pink), stdFont, EVENT_BUTTON99);   
   widget100= new Widget(360, 350, 520, 50, "Current Covid Guidlines MS", color(pink), stdFont, EVENT_BUTTON100);   
   widget101= new Widget(360, 350, 520, 50, "Current Covid Guidlines AL", color(pink), stdFont, EVENT_BUTTON101);   
   widget102= new Widget(360, 350, 520, 50, "Current Covid Guidlines ME", color(pink), stdFont, EVENT_BUTTON102);   
   widget103= new Widget(360, 350, 520, 50, "Current Covid Guidlines NH", color(pink), stdFont, EVENT_BUTTON103);   
   widget104= new Widget(360, 350, 520, 50, "Current Covid Guidlines RI", color(pink), stdFont, EVENT_BUTTON104);   
   widget105= new Widget(360, 350, 520, 50, "Current Covid Guidlines CT", color(pink), stdFont, EVENT_BUTTON105);   
   widget106= new Widget(360, 350, 520, 50, "Current Covid Guidlines DE", color(pink), stdFont, EVENT_BUTTON106);   
   widget107= new Widget(360, 350, 520, 50, "Current Covid Guidlines MD", color(pink), stdFont, EVENT_BUTTON107);   
   widget108= new Widget(360, 350, 520, 50, "Current Covid Guidlines WV", color(pink), stdFont, EVENT_BUTTON108);   
   widget109= new Widget(360, 350, 520, 50, "Current Covid Guidlines VA", color(pink), stdFont, EVENT_BUTTON109);   
   widget110= new Widget(360, 350, 520, 50, "Current Covid Guidlines NY", color(pink), stdFont, EVENT_BUTTON110);   
   widget111= new Widget(360, 350, 520, 50, "Current Covid Guidlines PA", color(pink), stdFont, EVENT_BUTTON111);   
   widget112= new Widget(360, 350, 520, 50, "Current Covid Guidlines AK", color(pink), stdFont, EVENT_BUTTON112);   
   screen1.addWidget(widget1);
   screen1.addWidget(widget2);
   screen1.addWidget(widget3);                                                   //adding widgets to their respective screens
   screen1.addWidget(widget4);                                                   // different screens to open different taps
   screen1.addWidget(widget6);
   screen1.addWidget(widget12);
   screen1.addWidget(widget63);
   screen1.addIntro();
   screen2.addWidget(widget5);
   screen2.donotAddIntro();
   screen2.addGraphofcounty();
   screen3.addWidget(widget5);
   screen3. addSymptoms();
   screen4.addWidget(widget5);
   screen5.addTrends();                                                        //adding each trending widget to the sreen
   screen5.addWidget(widget5);
   screen5.addWidget(widget7);
   screen5.addWidget(widget8);
   screen5.addWidget(widget9);
   screen5.addWidget(widget10);
   screen5.addWidget(widget11);
   screen6.addWidget(widget5);
   screen6.addWidget(widget13);
   screen6.addWidget(widget14);
   screen6.addWidget(widget16);
   screen6.addWidget(widget17);
   screen6.addWidget(widget18);
   screen6.addWidget(widget19);
   screen6.addWidget(widget20);
   screen6.addWidget(widget21);
   screen6.addWidget(widget22);
   screen6.addWidget(widget23);
   screen6.addWidget(widget24);
   screen6.addWidget(widget25);
   screen6.addWidget(widget26);
   screen6.addWidget(widget27);
   screen6.addWidget(widget28);
   screen6.addWidget(widget29);
   screen6.addWidget(widget30);
   screen6.addWidget(widget31);
   screen6.addWidget(widget32);
   screen6.addWidget(widget33);
   screen6.addWidget(widget34);
   screen6.addWidget(widget35);
   screen6.addWidget(widget36);
   screen6.addWidget(widget37);
   screen6.addWidget(widget38);
   screen6.addWidget(widget39);
   screen6.addWidget(widget40);
   screen6.addWidget(widget41);
   screen6.addWidget(widget42);
   screen6.addWidget(widget43);
   screen6.addWidget(widget44);
   screen6.addWidget(widget45);
   screen6.addWidget(widget46);
   screen6.addWidget(widget47);
   screen6.addWidget(widget48);
   screen6.addWidget(widget49);
   screen6.addWidget(widget50);
   screen6.addWidget(widget51);
   screen6.addWidget(widget52);
   screen6.addWidget(widget53);
   screen6.addWidget(widget54);
   screen6.addWidget(widget55);
   screen6.addWidget(widget56);
   screen6.addWidget(widget57);
   screen6.addWidget(widget58);
   screen6.addWidget(widget59);
   screen6.addWidget(widget60);
   screen6.addWidget(widget61);
   screen6.addWidget(widget62);
   screen7.addTX();
   screen7.addWidget(widget15);
   screen7.addWidget(widget64);
   screen8.addAZ();
   screen8.addWidget(widget15);
   screen8.addWidget(widget65);
   screen9.addCALI();
   screen9.addWidget(widget15);
   screen9.addWidget(widget66);
   screen10.addNEV();
   screen10.addWidget(widget15);
   screen10.addWidget(widget67);
   screen11.addUT();
   screen11.addWidget(widget15);
   screen11.addWidget(widget68);
   screen12.addOR();
   screen12.addWidget(widget15);
   screen12.addWidget(widget69);
   screen13.addWASH();
   screen13.addWidget(widget15);
   screen13.addWidget(widget70);
   screen14.addFLO();
   screen14.addWidget(widget15);
   screen14.addWidget(widget71);
   screen15.addKAN();
   screen15.addWidget(widget15);
   screen15.addWidget(widget72);
   screen16.addGEO();
   screen16.addWidget(widget15);
   screen16.addWidget(widget73);
   screen17.addOK();
   screen17.addWidget(widget15);
   screen17.addWidget(widget74);
   screen18.addHW();
   screen18.addWidget(widget15);
   screen18.addWidget(widget75);
   screen19.addIND();
   screen19.addWidget(widget15);
   screen19.addWidget(widget76);
   screen20.addOH();
   screen20.addWidget(widget15);
   screen20.addWidget(widget77);
   screen21.addTEN();
   screen21.addWidget(widget15);
   screen21.addWidget(widget78);
   screen22.addVER();
   screen22.addWidget(widget15);
   screen22.addWidget(widget79);
   screen23.addWS();
   screen23.addWidget(widget15);
   screen23.addWidget(widget80);
   screen24.addILL();
   screen24.addWidget(widget15);
   screen24.addWidget(widget81);
   screen25.addMASS();
   screen25.addWidget(widget15);
   screen25.addWidget(widget82);
   screen26.addNEB();
   screen26.addWidget(widget15);
   screen26.addWidget(widget83);
   screen27.addNCAR();
   screen27.addWidget(widget15);
   screen27.addWidget(widget84);
   screen28.addSCAR();
   screen28.addWidget(widget15);
   screen28.addWidget(widget85);
   screen29.addIDA();
   screen29.addWidget(widget15);
   screen29.addWidget(widget86);
   screen30.addMON();
   screen30.addWidget(widget15);
   screen30.addWidget(widget87);
   screen31.addWYOM();
   screen31.addWidget(widget15);
   screen31.addWidget(widget88);
   screen32.addCOL();
   screen32.addWidget(widget15);
   screen32.addWidget(widget89);
   screen33.addNMEX();
   screen33.addWidget(widget15);
   screen33.addWidget(widget90);
   screen34.addNDAC();
   screen34.addWidget(widget15);
   screen34.addWidget(widget91);
   screen35.addSDAC();
   screen35.addWidget(widget15);
   screen35.addWidget(widget92);
   screen36.addMIN();
   screen36.addWidget(widget15);
   screen36.addWidget(widget93);
   screen37.addIOWA();
   screen37.addWidget(widget15);
   screen37.addWidget(widget94);
   screen38.addMISSOU();
   screen38.addWidget(widget15);
   screen38.addWidget(widget95);
   screen39.addARK();
   screen39.addWidget(widget15);
   screen39.addWidget(widget96);
   screen40.addLOUS();
   screen40.addWidget(widget15);
   screen40.addWidget(widget97);
   screen41.addMICH();
   screen41.addWidget(widget15);
   screen41.addWidget(widget98);
   screen42.addKEN();
   screen42.addWidget(widget15);
   screen42.addWidget(widget99);
   screen43.addMISSIP();
   screen43.addWidget(widget15);
   screen43.addWidget(widget100);
   screen44.addALB();
   screen44.addWidget(widget15);
   screen44.addWidget(widget101);
   screen45.addMAIN();
   screen45.addWidget(widget15);
   screen45.addWidget(widget102);
   screen46.addNHAM();
   screen46.addWidget(widget15);
   screen46.addWidget(widget103);
   screen47.addRISL();
   screen47.addWidget(widget15);
   screen47.addWidget(widget104);
   screen48.addCONN();
   screen48.addWidget(widget15);
   screen48.addWidget(widget105);
   screen49.addDELA();
   screen49.addWidget(widget15);
   screen49.addWidget(widget106);
   screen50.addMARY();
   screen50.addWidget(widget15);
   screen50.addWidget(widget107);
   screen51.addWVIR();
   screen51.addWidget(widget15);
   screen51.addWidget(widget108);
   screen52.addVIR();
   screen52.addWidget(widget15);
   screen52.addWidget(widget109);
   screen53.addNY();
   screen53.addWidget(widget15);
   screen53.addWidget(widget110);
   screen54.addPEN();
   screen54.addWidget(widget15);
   screen54.addWidget(widget111);
   screen55.addALAS();
   screen55.addWidget(widget15);
   screen55.addWidget(widget112);
   screen56.addWidget(widget5);
   

 pressedTab= false;
 drawMap= false;
  table = loadTable("case.csv");                          // load excel 
  homescreen= true;
  data = new ArrayList<DataClass>();                      // arrayList
  PFont font = loadFont("Arial-Black-36.vlw");            // font
  textFont(font, 15); 
  for (int r=0; r < table.getRowCount(); r++) {           // for loop for rows to be in order 
    String  theDate = "";                                 // holding position
    String theCity = "";                                  // holding position
    String theState = "" ;                                // holding position 
    int theNumberOfGeoid=0 ;                              // initalize location
    int theNumberOfCases =0 ;                             // initalize cases 
    String theCountry ="";                                // holding position 
    for ( int c = 0; c < table.getColumnCount(); c++ ) {  // for loop for columns to be in order 
      switch (c) {
      case 0 :                                            // switch statements for all of the above 
        theDate = table.getString(r, c);
        break ;
      case 1 : 
        theCity = table.getString(r, c);
        break;
      case 2: 
        theState = table.getString(r, c);
        break;
      case 3 : 
        theNumberOfGeoid = table.getInt(r, c);
        break;
      case 4:
        theNumberOfCases = table.getInt(r, c);
        
        if(theState.equals("Arizona")) {                                                        // graph for the cases . by Aritro 
          casesArizona = casesArizona + theNumberOfCases;
          barArizona = new graphClass(casesArizona, (graphX * 1) -17, color(red));
        }
        
        if(theState.equals("California")) {
          casesCalifornia = casesCalifornia + theNumberOfCases;
          barCalifornia = new graphClass(casesCalifornia, (graphX * 2) -17, color(red));
        }
        
        if(theState.equals("Colorado")) {
          casesColorado = casesColorado + theNumberOfCases;
          barColorado = new graphClass(casesColorado, (graphX * 3) -17, color(red));
        }
        
        if(theState.equals("Connecticut")) {
          casesConnecticut = casesConnecticut + theNumberOfCases;
          barConnecticut = new graphClass(casesConnecticut, (graphX * 4) -17, color(red));
        }
        
        if(theState.equals("District of Columbia")) {
          casesDistrictOfColumbia = casesDistrictOfColumbia + theNumberOfCases;
          barDistrictOfColumbia = new graphClass(casesDistrictOfColumbia, (graphX * 5) -17, color(red));
        }
        
        if(theState.equals("Florida")) {
          casesFlorida = casesFlorida + theNumberOfCases;
          barFlorida = new graphClass(casesFlorida, (graphX * 6) -17, color(red));
        }
        
        if(theState.equals("Georgia")) {
          casesGeorgia = casesGeorgia + theNumberOfCases;
          barGeorgia = new graphClass(casesGeorgia, (graphX * 7) -17, color(red));
        }
        
        if(theState.equals("Hawaii")) {
          casesHawaii = casesHawaii + theNumberOfCases;
          barHawaii = new graphClass(casesHawaii, (graphX * 8) -17, color(red));
        }
        
        if(theState.equals("Illinois")) {
          casesIllinois = casesIllinois + theNumberOfCases;
          barIllinois = new graphClass(casesIllinois, (graphX * 9) -17, color(red));
        }
        
        if(theState.equals("Indiana")) {
          casesIndiana = casesIndiana + theNumberOfCases;
          barIndiana = new graphClass(casesIndiana, (graphX * 10) -17, color(red));
        }
        
        if(theState.equals("Iowa")) {
          casesIowa = casesIowa + theNumberOfCases;
          barIowa = new graphClass(casesIowa, (graphX * 11) -17, color(red));
        }
        
        if(theState.equals("Kansas")) {
          casesKansas = casesKansas + theNumberOfCases;
          barKansas = new graphClass(casesKansas, (graphX * 12) -17, color(red));
        }
        
        if(theState.equals("Kentucky")) {
          casesKentucy = casesKentucy + theNumberOfCases;
          barKentucy = new graphClass(casesKentucy, (graphX * 13) -17, color(red));
        }
        
        if(theState.equals("Louisiana")) {
          casesLouisiana = casesLouisiana + theNumberOfCases;
          barLouisiana = new graphClass(casesLouisiana, (graphX * 14) -17, color(red));
        }
        
        if(theState.equals("Maryland")) {
          casesMaryland = casesMaryland + theNumberOfCases;
          barMaryland = new graphClass(casesMaryland, (graphX * 15) -17, color(red));
        }
        
        if(theState.equals("Massachusetts")) {
          casesMassachusetts = casesMassachusetts + theNumberOfCases;
          barMassachusetts = new graphClass(casesMassachusetts, (graphX * 16) -17, color(red));
        }
        
        if(theState.equals("Minnesota")) {
          casesMinnesota = casesMinnesota + theNumberOfCases;
          barMinnesota = new graphClass(casesMinnesota, (graphX * 17) -17, color(red));
        }
        
        if(theState.equals("Missouri")) {
          casesMissouri = casesMissouri + theNumberOfCases;
          barMissouri = new graphClass(casesMissouri, (graphX * 18) -17, color(red));
        }
        
        if(theState.equals("Nebraska")) {
          casesNebraska = casesNebraska + theNumberOfCases;
          barNebraska = new graphClass(casesNebraska, (graphX * 19) -17, color(red));
        }
        
        if(theState.equals("Nevada")) {
          casesNevada = casesNevada + theNumberOfCases;
          barNevada = new graphClass(casesNevada, (graphX * 20) -17, color(red));
        }
        
        if(theState.equals("New Hampshire")) {
          casesNewHampshire = casesNewHampshire + theNumberOfCases;
          barNewHampshire = new graphClass(casesNewHampshire, (graphX * 21) -17, color(red));
        }
        
        if(theState.equals("New Jersey")) {
          casesNewJersey = casesNewJersey + theNumberOfCases;
          barNewJersey = new graphClass(casesNewJersey, (graphX * 22) -17, color(red));
        }
        
        if(theState.equals("New York")) {
          casesNewYork = casesNewYork + theNumberOfCases;
          barNewYork = new graphClass(casesNewYork, (graphX * 23) -17, color(red));
        }
        
        if(theState.equals("North Carolina")) {
          casesNorthCarolina = casesNorthCarolina + theNumberOfCases;
          barNorthCarolina = new graphClass(casesNorthCarolina, (graphX * 24) -17, color(red));
        }
        
        if(theState.equals("Ohio")) {
          casesOhio = casesOhio + theNumberOfCases;
          barOhio = new graphClass(casesOhio, (graphX * 25) -17, color(red));
        }
        
        if(theState.equals("Oklahoma")) {
          casesOklahoma = casesOklahoma + theNumberOfCases;
          barOklahoma = new graphClass(casesOklahoma, (graphX * 26) -17, color(red));
        }
        
        if(theState.equals("Oregon")) {
          casesOregon = casesOregon + theNumberOfCases;
          barOregon = new graphClass(casesOregon, (graphX * 27) -17, color(red));
          graphs.add(barOregon);
        }
        
        if(theState.equals("Pennsylvania")) {
          casesPennsylvania = casesPennsylvania + theNumberOfCases;
          barPennsylvania = new graphClass(casesPennsylvania, (graphX * 28) -17, color(red));
        }
        
        if(theState.equals("Rhode Island")) {
          casesRhodeIsland = casesRhodeIsland + theNumberOfCases;
          barRhodeIsland = new graphClass(casesRhodeIsland, (graphX * 29) -17, color(red));
        }
        
        if(theState.equals("South Carolina")) {
          casesSouthCarolina = casesSouthCarolina + theNumberOfCases;
          barSouthCarolina = new graphClass(casesSouthCarolina, (graphX * 30) -17, color(red));
        }
        
        if(theState.equals("Tennessee")) {
          casesTennesse = casesTennesse + theNumberOfCases;
          barTennesse = new graphClass(casesTennesse, (graphX * 31) -17, color(red));
        }
        
        if(theState.equals("Texas")) {
          casesTexas = casesTexas + theNumberOfCases;
          barTexas = new graphClass(casesTexas, (graphX * 32) -17, color(red));
        }
        
        if(theState.equals("Utah")) {
          casesUtah = casesUtah + theNumberOfCases;
          barUtah = new graphClass(casesUtah, (graphX * 33) -17, color(red));
        }
        
        if(theState.equals("Vermont")) {
          casesVermont = casesVermont + theNumberOfCases;
          barVermont = new graphClass(casesVermont, (graphX * 34) -17, color(red));
        }
        
        if(theState.equals("Virginia")) {
          casesVirginia = casesVirginia + theNumberOfCases;
          barVirginia = new graphClass(casesVirginia, (graphX * 35) -17, color(red));
        }
        
        if(theState.equals("Washington")) {
          casesWashington = casesWashington + theNumberOfCases;
          barWashington = new graphClass(casesWashington, (graphX * 36) -17, color(red));
        }
        
        if(theState.equals("Wisconsin")) {
          casesWisconsin = casesWisconsin + theNumberOfCases;
          barWisconsin = new graphClass(casesWisconsin, (graphX * 37) -17, color(red));
        }
        
        break ;
      case 5 :
        theCountry = table.getString(r, c);
        DataClass dataGraph = new DataClass( theDate,theCity,theState,theNumberOfGeoid,theNumberOfCases, theCountry);    // constructor to draw the data 
        data.add(dataGraph);                                                                                             // add the data 
        break ;
      } 
    }
  }
}
void scene() {                // added by kevin 
  pushMatrix();
 
  // reading scroll bar 
  float newYValue = scrollRect.scrollValue();  
  translate (0, newYValue);
 
  // The scene :
  stroke(255);  
  text("End of virtual canvas", 380, heightOfCanvas-16);    
  fill(122); 
  popMatrix();
}

void draw() {              // added by aziz and parnav // edited by aritro and kevin  
bgImg.resize(SCREEN_X, SCREEN_Y);
   background(bgImg);
  stroke ( 226,204,0);
  shape(shape);
  if ( g> height) {
    g=0;
  }
  for ( int j = 0; j < data.size(); j++ ) {  // for loop for data size   
    data.get(j).draw((float)(j*2));          // the space between      
    data.get(j).move();                      // movement of the text 
    }
    scene();
    scrollRect.draw();
    scrollRect.drag();
    f =0;
     widget5.draw();                        // draws the data if the homescreen is not true
     screen1.addIntro= false;
    if(homescreen)
    {
      screen1.addIntro= true;
   currentscreen.draw();
    }                                      // draws the home screen if homescreen is true
    
    if(drawMap)
    {
      frameRate(400);
  background(255); 
   map.draw(theslider.setWeek());                            // slider for the week  
  theslider.draw(); 
  smooth();
  widget5.draw();
    }
    
     for (int i=0;i<myWidgets.size();i++) {  
    ((Widget) myWidgets.get(i)).draw(); 
  }
    checkButtons();                        // checks for the mouse position over the image
    overButton=false;
     
  }
// ________________________________________________________________________________
void mouseWheel(MouseEvent event ) {// mouseWheel method to control the text 
  f = event.getCount();
if (f > 0   ){
  z++;
  hasScrolled = true ;                   // boolean to confirm the scrolling 
  println("true");                        // when scroll down 
}
if ( f<0  ) {                             // when scroll up
  z--;
  hasScrolled = false ;
  println("fasle");
}
if ( z<=0  ){                         // max to not go up anymore       
  f=0;
} 
  println(f);                 // willprint the mouse wheeling function 
}
//______________________________________________________________________________________________________________________________________________________

void mouseMoved(){ // added by aritro and was edited by parnav 
int event;
for(int i = 0; i < currentscreen.widgetList.size(); i++) {                               // changes the stroke to white when hovered on the widgets
  Widget aWidget = (Widget) currentscreen.widgetList.get(i);
  event = aWidget.getEvent(mouseX, mouseY);                                            // takes in the x and y positions of the pointer and compares it with the boundaries
  switch(event) {
    case EVENT_BUTTON1:                                       // sets troke if mouse is over the event/widget mentioned
    case EVENT_BUTTON2:                                        // else -- no stroke is not over widgit
    case EVENT_BUTTON3:
    case EVENT_BUTTON4:                                        // switch statements for diff events by Parnav 
    case EVENT_BUTTON5:
    case EVENT_BUTTON6:
    case EVENT_BUTTON7:
    case EVENT_BUTTON8:
    case EVENT_BUTTON9:
    case EVENT_BUTTON10:
    case EVENT_BUTTON11:
    case EVENT_BUTTON12:
    case EVENT_BUTTON13:
    case EVENT_BUTTON14:
    case EVENT_BUTTON15:
    case EVENT_BUTTON16:
    case EVENT_BUTTON17:
    case EVENT_BUTTON18:
    case EVENT_BUTTON19:
    case EVENT_BUTTON20:
    case EVENT_BUTTON21:
    case EVENT_BUTTON22:
    case EVENT_BUTTON23:
    case EVENT_BUTTON24:
    case EVENT_BUTTON25:
    case EVENT_BUTTON26:
    case EVENT_BUTTON27:
    case EVENT_BUTTON28:
    case EVENT_BUTTON29:
    case EVENT_BUTTON30:
    case EVENT_BUTTON31:
    case EVENT_BUTTON32:
    case EVENT_BUTTON33:
    case EVENT_BUTTON34:
    case EVENT_BUTTON35:
    case EVENT_BUTTON36:
    case EVENT_BUTTON37:
    case EVENT_BUTTON38:
    case EVENT_BUTTON39:
    case EVENT_BUTTON40:
    case EVENT_BUTTON41:
    case EVENT_BUTTON42:
    case EVENT_BUTTON43:
    case EVENT_BUTTON44:
    case EVENT_BUTTON45:
    case EVENT_BUTTON46:
    case EVENT_BUTTON47:
    case EVENT_BUTTON48:
    case EVENT_BUTTON49:
    case EVENT_BUTTON50:
    case EVENT_BUTTON51:
    case EVENT_BUTTON52:
    case EVENT_BUTTON53:
    case EVENT_BUTTON54:
    case EVENT_BUTTON55:
    case EVENT_BUTTON56:
    case EVENT_BUTTON57:
    case EVENT_BUTTON58:
    case EVENT_BUTTON59:
    case EVENT_BUTTON60:
    case EVENT_BUTTON61:
    case EVENT_BUTTON62:
    case EVENT_BUTTON63:
    case EVENT_BUTTON64:
    case EVENT_BUTTON65:
    case EVENT_BUTTON66:
    case EVENT_BUTTON68:
    case EVENT_BUTTON69:
    case EVENT_BUTTON70:
    case EVENT_BUTTON71:
    case EVENT_BUTTON72:
    case EVENT_BUTTON73:
    case EVENT_BUTTON74:
    case EVENT_BUTTON75:
    case EVENT_BUTTON76:
    case EVENT_BUTTON77:
    case EVENT_BUTTON78:
    case EVENT_BUTTON79:
    case EVENT_BUTTON80:
    case EVENT_BUTTON81:
    case EVENT_BUTTON82:
    case EVENT_BUTTON83:
    case EVENT_BUTTON84:
    case EVENT_BUTTON85:
    case EVENT_BUTTON86:
    case EVENT_BUTTON87:
    case EVENT_BUTTON88:
    case EVENT_BUTTON89:
    case EVENT_BUTTON90:
    case EVENT_BUTTON91:
    case EVENT_BUTTON92:
    case EVENT_BUTTON93:
    case EVENT_BUTTON94:
    case EVENT_BUTTON95:
    case EVENT_BUTTON96:
    case EVENT_BUTTON97:
    case EVENT_BUTTON98:
    case EVENT_BUTTON99:
    case EVENT_BUTTON100:
    case EVENT_BUTTON101:
    case EVENT_BUTTON102:
    case EVENT_BUTTON103:
    case EVENT_BUTTON104:
    case EVENT_BUTTON105:
    case EVENT_BUTTON106:
    case EVENT_BUTTON107:
    case EVENT_BUTTON108:
    case EVENT_BUTTON109:
    case EVENT_BUTTON110:
    case EVENT_BUTTON111:
    case EVENT_BUTTON112:


    aWidget.shape.setStroke(color(255));
    break;
    case EVENT_NULL:
    aWidget.shape.setStroke(color(0));
    
    
   }
   loop();
  }
  if(!homescreen)                                                                     //if homescreen is false, then checks for mouse position over "back" button in the list
  {
    if(mouseX>widget5.x && mouseX<widget5.x+widget5.width && mouseY>widget5.y && mouseY<widget5.y+widget5.height)
    {
      widget5.shape.setStroke(color(255));
    }
    else
    {
      widget5.shape.setStroke(color(0));
    }
  }
   int index;
  for (int i=0; i<myWidgets.size(); i++) {                                            // loop for the widgets by aziz 
    Widget aWidget = (Widget) myWidgets.get(i);
    index = aWidget.getEvent(mouseX,mouseY);
    if (index != EVENT_NULL) {
      aWidget.mouseOver();
    }
    else {
      aWidget.mouseNotOver();  
    }
  }
  checkButtons();                                                         // checks for the mouse position 
}
void keyPressed() {               
  if(focus !=null) { 
    if (keyCode == ENTER) {                                               // search bar by aziz as when you type the city it will search it on the screen to all the states of USA.
      focus.match();
      focus.covid();
      focus.symptoms();
      focus.heat();
      focus.states();
      focus.texas();
      focus.arizona();
      focus.california();
      focus.nevada();
      focus.utah();
      focus.oregon();
      focus.washington();
      focus.florida();
      focus.kansas();
      focus.georgia();
      focus.oklahoma();
      focus.hawaii();
      focus.indiana();
      focus.ohio();
      focus.tennessee();
      focus.vermont();
      focus. wisconsin();
      focus.illinois();
      focus.massachusetts();
      focus.nebraska();
      focus.northCarolina();
      focus.southCarolina();
      focus.idaho();
      focus.montana();
      focus.wyoming();
      focus.colorado();
      focus.newMexico();
      focus.northDakota();
      focus.southDakota();
      focus.minnesota();
      focus.iowa();
      focus.missouri();
      focus.arskansas();
      focus.louisina();
      focus.michigan();
      focus.kentucky();
      focus.mississippi();
      focus.alabama();
      focus.maine();
      focus.newHampshire();
      focus.rhodeIsland();
      focus.connecticut();
      focus.delaware();
      focus.maryLand();
      focus.westVirginia();
      focus.virginia();
      focus.newYork();
      focus.pennsylvania();
      focus.alaska();
      focus.weekly();
    }
    focus.append(key); 
  }
}

void mousePressed() {                   // added by parnav and edited by kevin , aziz and aritro 
  scrollRect.mousePressedRect();
  int index;
  int event;
  event = currentscreen.getEvent();
  switch(event) {
    case EVENT_BUTTON1:                                                   // in case list button is pressed, it exits the home screen 
   homescreen= false;
    break;
    case EVENT_BUTTON2:                                                 // exits the programme if exit is pressed
     exit(); 
    break;                                                               
  case EVENT_BUTTON3:                                                   // loads the screen2 with graph, when graph button is pressed
  currentscreen= screen2;
  break;
  case EVENT_BUTTON4:                                                  // load the screen3 with symptoms of covid-19 when symptoms button is pressed
  currentscreen= screen3;
  break;
  case EVENT_BUTTON5:
  currentscreen= screen1;
  drawMap= false;
  break;
  case EVENT_BUTTON6:
  currentscreen= screen5;                                               // load trending screen  5 if widget clciked 
  break;
  case EVENT_BUTTON7:
  link("https://twitter.com/search?q=COVID19&src=typed_query");           // load repsctive link
  break;
  case EVENT_BUTTON8:
  link("https://twitter.com/search?q=%23COVID19ireland&src=typeahead_click");   // load repsctive link
  break;
  case EVENT_BUTTON9:
  link("https://twitter.com/search?q=COVID19USA&src=typed_query");            // load repsctive link
  break;
  case EVENT_BUTTON10:
  link("https://twitter.com/search?q=%23COVIDSecondWave&src=typeahead_click");   // load repsctive link
  break;
  case EVENT_BUTTON11:
  link("https://twitter.com/search?q=%23COVID19sverige&src=typeahead_click");     // load repsctive link
  break;
  case EVENT_BUTTON12 :
  currentscreen = screen6;
  break;
  case EVENT_BUTTON13:
  currentscreen= screen7;                                               // load trending screen  5 if widget clciked 
  break;
  case EVENT_BUTTON14:
  currentscreen= screen8;                                               // load trending screen  5 if widget clciked 
  break;
   case EVENT_BUTTON15:
  currentscreen= screen6;                                               // load trending screen  5 if widget clciked 
  break;
  case EVENT_BUTTON16:
  currentscreen= screen9;                                               // load trending screen  5 if widget clciked 
  break;
  case EVENT_BUTTON17:
  currentscreen= screen10;                                               // load trending screen  5 if widget clciked 
  break;
  case EVENT_BUTTON18:
  currentscreen= screen11;                                               // load trending screen  5 if widget clciked 
  break;
  case EVENT_BUTTON19:
  currentscreen= screen12;                                               // load trending screen  5 if widget clciked 
  break;
  case EVENT_BUTTON20:
  currentscreen= screen13;                                               // load trending screen  5 if widget clciked 
  break;
  case EVENT_BUTTON21:
  currentscreen= screen14;                                               // load trending screen  5 if widget clciked 
  break;
  case EVENT_BUTTON22:
  currentscreen= screen15;                                               // load trending screen  5 if widget clciked 
  break;
  case EVENT_BUTTON23:
  currentscreen= screen16;                                               // load trending screen  5 if widget clciked 
  break;
  case EVENT_BUTTON24:
  currentscreen= screen17;                                               // load trending screen  5 if widget clciked 
  break;
  case EVENT_BUTTON25:
  currentscreen= screen18;                                               // load trending screen  5 if widget clciked 
  break;
  case EVENT_BUTTON26:
  currentscreen= screen19;                                               // load trending screen  5 if widget clciked 
  break;
  case EVENT_BUTTON27:
  currentscreen= screen20;                                               // load trending screen  5 if widget clciked 
  break;
  case EVENT_BUTTON28:
  currentscreen= screen21;                                               // load trending screen  5 if widget clciked 
  break;
  case EVENT_BUTTON29:
  currentscreen= screen22;                                               // load trending screen  5 if widget clciked 
  break;
  case EVENT_BUTTON30:
  currentscreen= screen23;                                               // load trending screen  5 if widget clciked 
  break;
  case EVENT_BUTTON31:
  currentscreen= screen24;                                               // load trending screen  5 if widget clciked 
  break;
  case EVENT_BUTTON32:
  currentscreen= screen25;                                               // load trending screen  5 if widget clciked 
  break;
  case EVENT_BUTTON33:
  currentscreen= screen26;                                               // load trending screen  5 if widget clciked 
  break;
  case EVENT_BUTTON34:
  currentscreen= screen27;                                               // load trending screen  5 if widget clciked 
  break;
  case EVENT_BUTTON35:
  currentscreen= screen28;                                               // load trending screen  5 if widget clciked 
  break;
  case EVENT_BUTTON36:
  currentscreen= screen29;                                               // load trending screen  5 if widget clciked 
  break;
  case EVENT_BUTTON37:
  currentscreen= screen30;                                               // load trending screen  5 if widget clciked 
  break;
  case EVENT_BUTTON38:
  currentscreen= screen31;                                               // load trending screen  5 if widget clciked 
  break;
  case EVENT_BUTTON39:
  currentscreen= screen32;                                               // load trending screen  5 if widget clciked 
  break;
  case EVENT_BUTTON40:
  currentscreen= screen33;                                               // load trending screen  5 if widget clciked 
  break;
  case EVENT_BUTTON41:
  currentscreen= screen34;                                               // load trending screen  5 if widget clciked 
  break;
  case EVENT_BUTTON42:
  currentscreen= screen35;                                               // load trending screen  5 if widget clciked 
  break;
  case EVENT_BUTTON43:
  currentscreen= screen36;                                               // load trending screen  5 if widget clciked 
  break;
  case EVENT_BUTTON44:
  currentscreen= screen37;                                               // load trending screen  5 if widget clciked 
  break;
  case EVENT_BUTTON45:
  currentscreen= screen38;                                               // load trending screen  5 if widget clciked 
  break;
  case EVENT_BUTTON46:
  currentscreen= screen39;                                               // load trending screen  5 if widget clciked 
  break;
  case EVENT_BUTTON47:
  currentscreen= screen40;                                               // load trending screen  5 if widget clciked 
  break;
  case EVENT_BUTTON48:
  currentscreen= screen41;                                               // load trending screen  5 if widget clciked 
  break;
  case EVENT_BUTTON49:
  currentscreen= screen42;                                               // load trending screen  5 if widget clciked 
  break;
  case EVENT_BUTTON50:
  currentscreen= screen43;                                               // load trending screen  5 if widget clciked 
  break;
  case EVENT_BUTTON51:
  currentscreen= screen44;                                               // load trending screen  5 if widget clciked 
  break;
  case EVENT_BUTTON52:
  currentscreen= screen45;                                               // load trending screen  5 if widget clciked 
  break;
  case EVENT_BUTTON53:
  currentscreen= screen46;                                               // load trending screen  5 if widget clciked 
  break;
  case EVENT_BUTTON54:
  currentscreen= screen47;                                               // load trending screen  5 if widget clciked 
  break;
  case EVENT_BUTTON55:
  currentscreen= screen48;                                               // load trending screen  5 if widget clciked 
  break;
  case EVENT_BUTTON56:
  currentscreen= screen49;                                               // load trending screen  5 if widget clciked 
  break;
  case EVENT_BUTTON57:
  currentscreen= screen50;                                               // load trending screen  5 if widget clciked 
  break;
  case EVENT_BUTTON58:
  currentscreen= screen51;                                               // load trending screen  5 if widget clciked 
  break;
  case EVENT_BUTTON59:
  currentscreen= screen52;                                               // load trending screen  5 if widget clciked 
  break;
  case EVENT_BUTTON60:
  currentscreen= screen53;                                               // load trending screen  5 if widget clciked 
  break;
  case EVENT_BUTTON61:
  currentscreen= screen54;                                               // load trending screen  5 if widget clciked 
  break;
  case EVENT_BUTTON62:
  currentscreen= screen55;                                               // load trending screen  5 if widget clciked 
  break;
  case EVENT_BUTTON63:
  currentscreen= screen56;
  drawMap=true;
  break;
  case EVENT_BUTTON64:                                                                                                                                            // coded by Kevin and Aritro in 30 minute intervals
  link("https://www.dshs.state.tx.us/coronavirus/opentexas.aspx#:~:text=individuals%20are%20strongly%20encouraged%20to,wearing%20of%20a%20face%20covering.");     // load repsctive link
  break;
  case EVENT_BUTTON65:
  link("https://www.azdhs.gov/");     // load repsctive link
  break;
  case EVENT_BUTTON66:
  link("https://covid19.ca.gov/stay-home-except-for-essential-needs/");     // load repsctive link
  break;
  case EVENT_BUTTON67:
  link("https://nvhealthresponse.nv.gov/");     // load repsctive link
  break;
  case EVENT_BUTTON68:
  link("https://coronavirus.utah.gov/");     // load repsctive link
  break;
  case EVENT_BUTTON69:
  link("https://govstatus.egov.com/OR-OHA-COVID-19");     // load repsctive link
  break;
  case EVENT_BUTTON70:
  link("https://coronavirus.wa.gov/");     // load repsctive link
  break;
  case EVENT_BUTTON71:
  link("https://floridahealthcovid19.gov/");     // load repsctive link
  break;
  case EVENT_BUTTON72:
  link("https://www.coronavirus.kdheks.gov/?utm_source=google&utm_medium=ppc&utm_campaign=brand%20campaign&gclid=CjwKCAjwmv-DBhAMEiwA7xYrd0X4J3SpwXNVkLNZmdx9t7KA2BR0NaZClIlj87Jl95oWTnjwGMBYRhoComgQAvD_BwE");     // load repsctive link
  break;
  case EVENT_BUTTON73:
  link("https://dph.georgia.gov/");     // load repsctive link
  break;
  case EVENT_BUTTON74:
  link("https://oklahoma.gov/covid19.html");     // load repsctive link
  break;
  case EVENT_BUTTON75:
  link("https://www.huschblackwell.com/hawaii-state-by-state-covid-19-guidance");     // load repsctive link
  break;
  case EVENT_BUTTON76:
  link("https://www.coronavirus.in.gov/");     // load repsctive link
  break;
  case EVENT_BUTTON77:
  link("https://www.huschblackwell.com/ohio-state-by-state-covid-19-guidance");     // load repsctive link
  break;
  case EVENT_BUTTON78:
  link("https://www.huschblackwell.com/tennessee-state-by-state-covid-19-guidance");     // load repsctive link
  break;
  case EVENT_BUTTON79:
  link("https://www.huschblackwell.com/vermont-state-by-state-covid-19-guidance");     // load repsctive link
  break;
  case EVENT_BUTTON80:
  link("https://www.huschblackwell.com/wisconsin-state-by-state-covid-19-guidance");     // load repsctive link
  break;
  case EVENT_BUTTON81:
  link("https://www.huschblackwell.com/illinois-state-by-state-covid-19-guidance");     // load repsctive link
  break;
  case EVENT_BUTTON82:
  link("https://www.huschblackwell.com/massachusetts-state-by-state-covid-19-guidance");     // load repsctive link
  break;
  case EVENT_BUTTON83:
  link("https://www.huschblackwell.com/nebraska-state-by-state-covid-19-guidance");     // load repsctive link
  break;
  case EVENT_BUTTON84:
  link("https://www.huschblackwell.com/north-carolina-state-by-state-covid-19-guidance");     // load repsctive link
  break;
  case EVENT_BUTTON85:
  link("https://www.huschblackwell.com/south-carolina-state-by-state-covid-19-guidance");     // load repsctive link
  break;
  case EVENT_BUTTON86:
  link("https://www.huschblackwell.com/idaho-state-by-state-covid-19-guidance");     // load repsctive link
  break;
  case EVENT_BUTTON87:
  link("https://www.huschblackwell.com/montana-state-by-state-covid-19-guidance");     // load repsctive link
  break;
  case EVENT_BUTTON88:
  link("https://www.huschblackwell.com/wyoming-state-by-state-covid-19-guidance");     // load repsctive link
  break;
  case EVENT_BUTTON89:
  link("https://www.huschblackwell.com/colorado-state-by-state-covid-19-guidance");     // load repsctive link
  break;
  case EVENT_BUTTON90:
  link("https://www.huschblackwell.com/new-mexico-state-by-state-covid-19-guidance");     // load repsctive link
  break;
  case EVENT_BUTTON91:
  link("https://www.huschblackwell.com/north-dakota-state-by-state-covid-19-guidance");     // load repsctive link
  break;
  case EVENT_BUTTON92:
  link("https://www.huschblackwell.com/south-dakota-state-by-state-covid-19-guidance");     // load repsctive link
  break;
  case EVENT_BUTTON93:
  link("https://www.huschblackwell.com/minnesota-state-by-state-covid-19-guidance");     // load repsctive link
  break;
  case EVENT_BUTTON94:
  link("https://www.huschblackwell.com/iowa-state-by-state-covid-19-guidance");     // load repsctive link
  break;
  case EVENT_BUTTON95:
  link("https://www.huschblackwell.com/missouri-state-by-state-covid-19-guidance");     // load repsctive link
  break;
  case EVENT_BUTTON96:
  link("https://www.huschblackwell.com/arkansas-state-by-state-covid-19-guidance");     // load repsctive link
  break;
  case EVENT_BUTTON97:
  link("https://www.huschblackwell.com/louisiana-state-by-state-covid-19-guidance");     // load repsctive link
  break;
  case EVENT_BUTTON98:
  link("https://www.huschblackwell.com/kentucky-state-by-state-covid-19-guidance");     // load repsctive link
  break;
  case EVENT_BUTTON99:
  link("https://www.huschblackwell.com/michigan-state-by-state-covid-19-guidance");     // load repsctive link
  break;
  case EVENT_BUTTON100:
  link("https://www.huschblackwell.com/mississippi-state-by-state-covid-19-guidance");     // load repsctive link
  break;
  case EVENT_BUTTON101:
  link("https://www.huschblackwell.com/alabama-state-by-state-covid-19-guidance");     // load repsctive link
  break;
  case EVENT_BUTTON102:
  link("https://www.huschblackwell.com/maine-state-by-state-covid-19-guidance");     // load repsctive link
  break;
  case EVENT_BUTTON103:
  link("https://www.huschblackwell.com/new-hampshire-state-by-state-covid-19-guidance");     // load repsctive link
  break;
    case EVENT_BUTTON104:
  link("https://www.huschblackwell.com/rhode-island-state-by-state-covid-19-guidance");     // load repsctive link
  break;
  case EVENT_BUTTON105:
  link("https://www.huschblackwell.com/connecticut-state-by-state-covid-19-guidance");     // load repsctive link
  break;
  case EVENT_BUTTON106:
  link("https://www.huschblackwell.com/delaware-state-by-state-covid-19-guidance");     // load repsctive link
  break;
  case EVENT_BUTTON107:
  link("https://www.huschblackwell.com/maryland-state-by-state-covid-19-guidance");     // load repsctive link
  break;
  case EVENT_BUTTON108:
  link("https://www.huschblackwell.com/west-virginia-state-by-state-covid-19-guidance");     // load repsctive link
  break;
  case EVENT_BUTTON109:
  link("https://www.huschblackwell.com/virginia-state-by-state-covid-19-guidance");     // load repsctive link
  break;
  case EVENT_BUTTON110:
  link("https://www.huschblackwell.com/new-york-state-by-state-covid-19-guidance");     // load repsctive link
  break;
  case EVENT_BUTTON111:
  link("https://www.huschblackwell.com/pennsylvania-state-by-state-covid-19-guidance");     // load repsctive link
  break;
  case EVENT_BUTTON112:
  link("https://www.huschblackwell.com/alaska-state-by-state-covid-19-guidance");     // load repsctive link
  break;
}
if(mouseX>widget5.x && mouseX<widget5.x+widget5.width && mouseY>widget5.y && mouseY<widget5.y+widget5.height)
    {
     homescreen= true;
    }
    checkButtons(); 
     if (overButton) 
    { 
    link("https://www.who.int/emergencies/diseases/novel-coronavirus-2019/covid-19-vaccines");         //loads the website when the image is pressed
  }
    for (int i=0;i<myWidgets.size();i++) {
    Widget theWidget = (Widget) myWidgets.get(i);
    index = theWidget.getEvent(mouseX,mouseY);
    switch (index) {
    case TEXT_WIDGET:
      println("clicked on a text widget!");
      focus = (TextWidget) theWidget;
      return; // no need to break as we won't check the other ones
    default:
      focus = null;
      break;
    }
   }

}
void checkButtons() {                                                               //checks for the mouse position over the image and returns true if the mouse id over the image and returns false if not
  if(!screen1.addIntro)
  {
    overButton=false;
  }
  else
  {
  if (mouseX > 280 && mouseX < 980 && mouseY > 440 && mouseY <640) {               
    if(currentscreen==screen1 )
    {
    overButton = true;   
  } else {
    overButton = false;
  }
  }
  }
}
  
void mouseReleased() {                                  // for the scroller 
  scrollRect.mouseReleasedRect();
  
}
void mouseDragged(){  
   theslider.changeWeek(mouseX, mouseY);           // to decide the week time
   
}

void mouseClicked(){
   theslider.changeWeek(mouseX, mouseY);          // to decide the make it work 
}
 
