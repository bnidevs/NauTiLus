PShape songSelectButton, instructButton, creditsButton;
PShape[] buttonArr;
color priButtonColor, secButtonColor;

void setup(){
  size(700,500);
  buttonSetup();
  colorSetup();
}

void draw(){
  background(0);
  buttonHover();
  for(PShape p : buttonArr){
    shape(p);
  }
}

void buttonHover(){
  if(mouseX > 260 && mouseX < 440){
    if(mouseY > 290 && mouseY < 310){
      buttonArr[0].setFill(secButtonColor);
    }else if(mouseY > 320 && mouseY < 340){
      buttonArr[1].setFill(secButtonColor);
    }else if(mouseY > 350 && mouseY < 370){
      buttonArr[2].setFill(secButtonColor);
    }else{
      for(int i = 0; i < buttonArr.length; i++){
        buttonArr[i].setFill(priButtonColor);
      }
    }
  }else{
    for(int i = 0; i < buttonArr.length; i++){
      buttonArr[i].setFill(priButtonColor);
    }
  }
}

void buttonSetup(){
  buttonArr = new PShape[3];
  
  songSelectButton = createShape(RECT, 260, 290, 180, 20);
  
  instructButton = createShape(RECT, 260, 320, 180, 20);
  
  creditsButton = createShape(RECT, 260, 350, 180, 20);
  
  buttonArr[0] = songSelectButton;
  buttonArr[1] = instructButton;
  buttonArr[2] = creditsButton;
}

void colorSetup(){
  priButtonColor = color(96,0,193);
  secButtonColor = color(218,14,237);
}
