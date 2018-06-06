final int MENU = 0;
final int INSTRUCT = 1;
final int CREDITS = 2;

int status = MENU;

void setup(){
  size(700,500);
  
  // MENU SETUP
  buttonSetup();
  colorSetup();
  fontSetup();
  buttonTextSetup();
  logoSetup();
  
  // INSTRUCTIONS SETUP
  arrSetupInst();
  instructSetup();
  
  // CREDITS SETUP
  arrSetupCreds();
  creditsSetup();
}

void draw(){
  background(0);
  
  //MENU DRAW
  if(status == MENU){
    buttonHover();
    buttonDraw();
    txtDraw();
    titleDraw();
  }
  
  //INSTRUCTIONS DRAW
  if(status == INSTRUCT){
    arrDrawInst();
    instructDraw();
  }
  
  //CREDITS DRAW
  if(status == CREDITS){
    arrDrawCreds();
    creditsDraw();
  }
}

void mouseClicked(){
  if(status == MENU && mouseX > displaceMenu + 260 && mouseX < displaceMenu + 440){
    if(mouseY > 290 && mouseY < 310){
      
    }else if(mouseY > 320 && mouseY < 340){
      status = INSTRUCT;
    }else if(mouseY > 350 && mouseY < 370){
      status = CREDITS;
    }
  }
  
  if((status == CREDITS || status == INSTRUCT) && mouseX > 10 && mouseX < 55 && mouseY > 10 && mouseY < 50){
    status = MENU;
  }
}
