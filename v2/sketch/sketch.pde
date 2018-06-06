import java.util.ArrayList;

Arrow right, left, up, down;
Arrow[] matchArrs; //four arrows on top left corner
ArrayList<String> moves; //wasd coordination of moves
ArrayList<Arrow> moveArrs; //arrows that move up
int ctr;
int _score;
color backgroundcolor;

void setup(){
  size(700,500);
  frameRate(60);
  backgroundcolor = color(96,0,193);
  ctrSetup();
  moveSetup();
  arrowSetup();
  arrowDraw();
}

void draw(){
  background(backgroundcolor);
  arrowDraw();
  arrMove();
  if(moves.size() > 0){
    checkMove();
  }
  count();
  if(ctr == 0){
    addMove();
  }
}

void ctrSetup(){
  ctr = 0;
}

void moveSetup(){
  moves = new ArrayList<String>();
  moveArrs = new ArrayList<Arrow>();
}

void arrowSetup(){
  matchArrs = new Arrow[4];
  
  //  ******************* RIGHT ARROW SETUP BEGIN *******************
  matchArrs[0] = new Arrow(0);
  //  ******************** RIGHT ARROW SETUP END ********************
  
  //  ******************* LEFT ARROW SETUP BEGIN ********************
  matchArrs[1] = new Arrow(1); 
  //  ******************** LEFT ARROW SETUP END *********************
  
  //  ********************* UP ARROW SETUP BEGIN ********************
  matchArrs[2] = new Arrow(2);
  //  ********************** UP ARROW SETUP END *********************
  
  //  ******************** DOWN ARROW SETUP BEGIN *******************
  matchArrs[3] = new Arrow(3);
  //  ********************* DOWN ARROW SETUP END ********************
}

void arrowDraw(){
  for(Arrow p : matchArrs){
    shape(p.arrowShape);
  }
  for(Arrow p : moveArrs){
    shape(p.arrowShape);
  }
}

void addMove(){
  double decision = Math.random();
  if(decision < 0.25){
    moves.add("w");
    Arrow temp = new Arrow(2);
    temp.tempSet();
    moveArrs.add(temp);
  }else if(decision < 0.5){
    moves.add("a");
    Arrow temp = new Arrow(0);
    temp.tempSet();
    moveArrs.add(temp);
  }else if(decision < 0.75){
    moves.add("s");
    Arrow temp = new Arrow(3);
    temp.tempSet();
    moveArrs.add(temp);
  }else{
    moves.add("d");
    Arrow temp = new Arrow(1);
    temp.tempSet();
    moveArrs.add(temp);
  }
}

void removeMove(int pos){
  score();
  moves.remove(pos);
  moveArrs.remove(pos);
}

void keyPressed(){
  int pos = find(key + "", moves);
  if(pos != -1){
    removeMove(pos);
  }
}

void arrMove(){
  int len = moveArrs.size();
  for(int i = 0; i < len; i++){
    moveArrs.get(i).moveUp();
  }
}

int find(String x, ArrayList<String> arr){
  int rtrnVal = 0;
  for(String s : arr){
    if(x.equals(s)){
      return rtrnVal;
    }else{
      rtrnVal++;
    }
  }
  return -1;
}

void count(){
  if(ctr == 60){
    ctr = 0;
  }else{
    ctr++;
  }
}

void checkMove(){
  if(moves.get(0) == "w"){
    if(moveArrs.get(0).ycor < -45){
      removeMove(0);
    }
  }else if(moves.get(0) == "a"){
    if(moveArrs.get(0).ycor < -45){
      removeMove(0);
    }
  }else if(moves.get(0) == "s"){
    if(moveArrs.get(0).ycor < -45){
      removeMove(0);
    }
  }else{
    if(moveArrs.get(0).ycor < -45){
      removeMove(0);
    }
  }
}
void score() {
  float ydiff;
  if (moves.get(0) == "w" || moves.get(0) == "s") {
    ydiff = abs(moveArrs.get(0).ycor - 52);//distance bwtn moves and moveArrs 
}
  else {
    ydiff = abs(moveArrs.get(0).ycor - 50);//distance bwtn moves and moveArrs
  }
  if ((int)ydiff == 0) {
    _score += 7; //flawless
  }
  else if (ydiff < 5) {
    _score += 6; //perfect
  }
  else if (ydiff < 10) {
    _score += 5; //excellent
  }
  else if (ydiff < 15) {
    _score += 4; //great
  }
  else if (ydiff < 20) {
    _score += 3; //good 
  }
  else if (ydiff < 25) {
    _score += 2; //okay
  }
  else if (ydiff < 30) {
    _score += 1; //almost
  }
  else if (ydiff < 35) {
    _score -= 1; //bad
  }
  else {
    _score -= 2; //miss
  }
  println(_score);
}
