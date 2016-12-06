/*  Simple dynamic lines graphics created with love in Processing
    Rupal Barman 2016
*/

Node node[]= new Node[10];
boolean showSweep= false;

void setup() {
  fullScreen();
  //size(640, 480);
  for(int i=0;i<10;i++)
    node[i]= new Node();
  background(0);
  smooth();
}

void draw() {
  if(!showSweep)
    background(0);
    
  for(int i=0; i<10; i++){
    node[i].show();
    node[i].move();
    node[i].boundary();
  }
}

void mousePressed(){
  showSweep=!showSweep;
}