// this class was added by aziz and coded as well 
// it was revised by kevin

class TextWidget extends Widget {
  int maxlen;

  TextWidget(int x, int y, int width, int height, String label, color widgetColor, PFont font, int event, int maxlen) {
    super(x, y, width, height, label, widgetColor, font, event);
    labelColor=color(0);
    this.maxlen=maxlen;
  }
  String getText() {
    return label;
  }
  void append(char s) {
    if (s==BACKSPACE) {
      if (!label.equals("")) {
        label=label.substring(0, label.length()-1);
      }
    } else if (label.length() < maxlen) {
      label=label+str(s);
    }
  }                                                  // void match till the last void was coded by aziz to help the person to search up any the cases of any state by  ( the abbreviations ).
  void match() {                                     // to make it match the search bar ny aziz 
    if ( label.equals("graph")) {
      currentscreen = screen2;
    }
}
void covid() {                                     // to make it match the search bar by aziz 
  if ( label.equals("covid")) {
    currentscreen=screen5;
  }
}
void symptoms() { 
  if (label.equals("symptoms")) {
    currentscreen = screen3;
  }
}
void heat() {
  if (label.equals("map")) {
    currentscreen =screen6;
  }
}
void states() { 
  if (label.equals("state")) {
    currentscreen =screen6;
  }
}

  void texas() {
    if(label.equals("tx")) {
      currentscreen =screen7;
    }
  }
  void arizona() {
    if(label.equals("az")){
      currentscreen = screen8;
    }
  }
  void california() {
    if(label.equals("cali")){
      currentscreen = screen9;
    }
  }
  void nevada() {
    if(label.equals("nev")){
      currentscreen = screen10;
    }
  }
  void utah() {
    if(label.equals("ut")){
      currentscreen = screen11;
    }
  }
  void oregon() {
    if(label.equals("or")){
      currentscreen = screen12;
    }
  }
  void washington() {
  if (label.equals("wa")){
    currentscreen = screen13;
  } 
  }
  void florida() {
    if(label.equals("fl")){
      currentscreen = screen14;
    }
  }
  void kansas() {
    if(label.equals("ks")){
      currentscreen = screen15;
    }
  }
   void georgia() {
    if(label.equals("ga")){
      currentscreen = screen16;
    }
  }
   void oklahoma() {
    if(label.equals("ok")){
      currentscreen = screen17;
    }
  }
   void hawaii() {
    if(label.equals("hi")){
      currentscreen = screen18;
    }
  }
   void indiana() {
    if(label.equals("in")){
      currentscreen = screen19;
    }
  }
   void ohio() {
    if(label.equals("oh")){
      currentscreen = screen20;
    }
  }
   void tennessee() {
    if(label.equals("tn")){
      currentscreen = screen21;
    }
  }
  void vermont() {
    if(label.equals("vt")){
      currentscreen = screen22;
    }
  }
  void wisconsin() {
    if(label.equals("wi")){
      currentscreen = screen23;
    }
  }
  void illinois() {
    if(label.equals("il")){
      currentscreen = screen24;
    }
  }
  void massachusetts() {
    if(label.equals("ma")){
      currentscreen = screen25;
    }
  }
  void nebraska() {
    if(label.equals("ne")){
      currentscreen = screen26;
    }
  }
  void northCarolina() {
    if(label.equals("nc")){
      currentscreen = screen27;
    }
  }
  void southCarolina() {
    if(label.equals("sc")){
      currentscreen = screen28;
    }
  }
  void idaho() {
    if(label.equals("id")){
      currentscreen = screen29;
    }
  }
  void montana() {
    if(label.equals("mt")){
      currentscreen = screen30;
    }
  }
  void wyoming() {
    if(label.equals("wy")){
      currentscreen = screen31;
    }
  }
  void colorado() {
    if(label.equals("co")){
      currentscreen = screen32;
    }
  }
  void newMexico() {
    if(label.equals("nm")){
      currentscreen = screen33;
    }
  }
  void northDakota() {
    if(label.equals("nd")){
      currentscreen = screen34;
    }
  }
  void southDakota() {
    if(label.equals("sd")){
      currentscreen = screen35;
    }
  }
  void minnesota() {
    if(label.equals("mn")){
      currentscreen = screen36;
    }
  }
  void iowa() {
    if(label.equals("ia")){
      currentscreen = screen37;
    }
  }
  void missouri() {
    if(label.equals("mo")){
      currentscreen = screen38;
    }
  }
  void arskansas() {
    if(label.equals("ar")){
      currentscreen = screen39;
    }
  }
  void louisina() {
    if(label.equals("la")){
      currentscreen = screen40;
    }
  }
  void michigan() {
    if(label.equals("mi")){
      currentscreen = screen41;
    }
  }
  void kentucky() {
    if(label.equals("ky")){
      currentscreen = screen42;
    }
  }
  void mississippi() {
    if(label.equals("ms")){
      currentscreen = screen43;
    }
  }
  void alabama() {
    if(label.equals("al")){
      currentscreen = screen44;
    }
  }
  void maine() {
    if(label.equals("me")){
      currentscreen = screen45;
    }
  }
  void newHampshire() {
    if(label.equals("nh")){
      currentscreen = screen46;
    }
  }
  void rhodeIsland() {
    if(label.equals("ri")){
      currentscreen = screen47;
    }
  }
   void connecticut() {
    if(label.equals("ct")){
      currentscreen = screen48;
    }
  }
   void delaware() {
    if(label.equals("de")){
      currentscreen = screen49;
    }
  }
   void maryLand() {
    if(label.equals("md")){
      currentscreen = screen50;
    }
  }
   void westVirginia() {
    if(label.equals("wv")){
      currentscreen = screen51;
    }
  }
   void virginia() {
    if(label.equals("va")){
      currentscreen = screen52;
    }
  }
   void newYork() {
    if(label.equals("ny")){
      currentscreen = screen53;
    }
  }
   void pennsylvania() {
    if(label.equals("pa")){
      currentscreen = screen54;
    }
  }
  void alaska() {
    if(label.equals("ak")){
      currentscreen = screen55;
    }
  }
  void weekly(){
    if(label.equals("weekly")){
      currentscreen=screen56;
    }
  }
  
}
