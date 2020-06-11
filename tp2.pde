float x,y;
float easing = 0.05;
PImage[] abeja = new PImage[4];
PImage[] oruga = new PImage[9];
PImage[] m = new PImage[5];
PImage fondo;
PFont fuente;

String creditos = "producer\n\nKelly Crews\n\n\n\n\n\nstory editors\nCraig Lewis\nMerriwether Williams\n\nstaff writer\nTim McKeon\n\n\n\nsupervising director\nLarry Leichliter\n\nsheet timing\nRussell Calabrese\nDon Judge\nGordon Kent\nChristine Kolosov\nMike Lyam\n\n\n\nco producer \nPendelton Ward\n\nproduction manager\nKeith Mack\n\nproduction coordinator\nDick Grunert\n\nProduction assistant\nDavid C. Smith\n\n\n\nlead character & prop designer\nPhil Rynda\n\ncharacter & prop designers\nNatasha Allegri\nTom Herpich\n\ncharacter & prop design clean-up\nMike Collins\n\n\n\nbackground designers\nghostshrimp\nSantino Lascano\n\nbackground painters\nMartin Ansolabehere\nSue Mondt\n\ncolor stylists\nSandra Calleros\nSimon Simmonds\n\n\n\nanimatic timers\nGreg Leviatan\nAndy Tauke\n\nanimatic scanner\nTammy List\n\nstoryboard revisions\nAko Castuera\nSomvilay Xayaphone\n\n\n\nVoices\nfinn                                          JeremyShada\njake                                         JohnDiMaggio\nprincess bubblegum                       Hyden Walch\nlady raincorn                                   Niki Yang\ntree trunks                      Polly Lou Livingston\nlumpy space princess                 Pendleton Ward\n\n\n\nvoice direction \nKeythe Farley \n\nrecording studio manager\nKarie Gima Pham\n\nrecording engineer\nRobert Serda\n\n\n\nsupervising editor\nPaul Douglas\n\ndialogue editor\nKrandal Crews\n\ndirector production technology\nAntonio Gonella\n\n\n\ncomposer\nCasey Basichis\n\nmusic editor\nNick Carr\n\nmain title song\nPendleton ward\nCasey Basichis\n\nend credit song\nAshley Eriksson\n\npost production sound studio\nSabre Media Studios\n\nsupervising sound editors\nTom Syslo\nTimothy J. Borquez'MPSE\n\nre-recording mixers\nEric Freeman\nTimothy J. Borquez'C.A.S.\n\n\n\npost production supervisor\nTony Tedford\n\npost production coordinator\nAlicia Parkinson\n\nmachine room operator \nChris Hoetger\n\n\n\noverseas production facility\nRough Draft Korea Co Ltd.\nSaeron Animation Inc.\n\noverseas directors\nDirector Won\nBonghui Han\n\nfor frederator studios\nassociate producer\nEric Homan\nsupervising producer\nKevin Kolde\n\n\n\nfor cartoon network\nexecutive producers\nCurtis Lelash\nRob Swartz\nRob Sorcher\n\n\n\n\n";

void setup(){
  size(1280,720);
  abeja[0] = loadImage("a1.png");
  abeja[1] = loadImage("a2.png");
  abeja[2] = loadImage("a3.png");
  abeja[3] = loadImage("a4.png");
  
  oruga[0] = loadImage("o1.png");
  oruga[1] = loadImage("o2.png");
  oruga[2] = loadImage("o3.png");
  oruga[3] = loadImage("o4.png");
  oruga[4] = loadImage("o5.png");
  oruga[5] = loadImage("o6.png");
  oruga[6] = loadImage("o7.png");
  oruga[7] = loadImage("o8.png");
  oruga[8] = loadImage("o9.png");
  
  m[0] = loadImage("m1.png");
  m[1] = loadImage("m2.png");
  m[2] = loadImage("m3.png");
  m[3] = loadImage("m4.png");
  m[4] = loadImage("m5.png");
  
  fondo = loadImage("fondo.png");
  fuente = createFont("Thunderman.ttf",40);
  
  imageMode(CENTER);
  textAlign(CENTER,TOP);
  noCursor();
  
}

void draw(){
    image(fondo,width/2,height/2);
  
  float targetX = mouseX;
  float dx = targetX - x;
  x = x + dx * easing;
  
  float targetY = mouseY;
  float dy = targetY - y;
  y = y+dy*easing;

  image(oruga[frameCount/4%9],frameCount-400,frameCount*2-1000);
  
  image(m[frameCount/4%5],frameCount+640, -frameCount*2+1000);
    
  image(abeja[frameCount/2%4], x , y);
  
  
  fill(25);
  textFont(fuente);
  textLeading(40);
  text(creditos,width/2,height-frameCount*6);
}
