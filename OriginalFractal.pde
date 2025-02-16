int setup = 2; 
float ter =0 ; 
float en = 0 ; 
void setup() {
  size(700,700); 
  rectMode(CENTER); 
  
} 
void draw() {
//background(0); 
ter +=.000611; 
System.out.println(ter); 
if ( ter > 2) {
ter *=- 1;} 
//if (en > 0) {  
//    en = 0;
//}
recursion(0,0,500);} 
void recursion(int x, int y , int size){
  beginShape();                                                                              
  curveVertex(x,y);
  curveVertex(x+size+(size*cos(ter)),(size)+y+(size*sin(ter))+(size*sin(ter*ter*size)));
 
  curveVertex(x+(size*cos(ter)),size+size+y+(size*sin(ter)));
  curveVertex(x+size+(size*cos(ter)),size+size+size+y+(size*sin(ter)));
  endShape();  
 
  if(size>20){
    recursion(x,y/2,size/2);
    recursion(x+size/2,y/2+size/2,size/2);
    recursion(x+size/2,y-size/2,size/2);
    recursion(x+2*size/2,y-size/2,size/2);
  } 
} 
