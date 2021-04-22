// this was coded by pranav
// was supervisied by aritro 
// help by kevin 
// edited by Abdelaziz 

class Widget {
int x, y, width, height;                           // creates a class widget 
String label; int event;
color widgetColor, labelColor, lineColor;
PFont widgetFont;
PShape shape;



Widget(int x,int y, int width, int height, String label,                     //initialising the class         
color widgetColor, PFont widgetFont, int event){
this.x=x; this.y=y; this.width = width; this.height= height;
this.label=label; this.event=event;
this.widgetColor=widgetColor; this.widgetFont=widgetFont;
labelColor= color(0);
shape = createShape(RECT,x,y,width, height);
shape.setFill(widgetColor);
}

void draw(){
fill(widgetColor);
stroke(lineColor);
rect(x,y,width,height);  
shape(shape);
fill(labelColor);                             //draws the widget , where shape defines the shape, size and coordinates of the widget
text(label, x+10, y+height-10);
}



int getEvent(int mX, int mY){              
if(mX>x && mX < x+width && mY >y && mY <y+height){                      // gets the event 
return event;
}
return EVENT_NULL;
}
 void mouseOver() {
    lineColor = color(255);
  }
   void mouseNotOver() {
    lineColor = color(0);
  }
  
  
  
}
