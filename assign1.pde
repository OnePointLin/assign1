/* please implement your assign1 code in this file. */

PImage backGround1;
PImage backGround2;
PImage enemy;
PImage fighter;
PImage hp;
PImage treasure;

int backGroundPosition_1 = 0, backGroundPosition_2 = -641 ;
int enemyPosition_x= 0, enemyPosition_y;
int bloodWdith;
int treasurePosition_x, treasurePosition_y;

void setup () {
  size(640,480) ; 
  
  backGround1 = loadImage("img/bg1.png");
  backGround2 = loadImage("img/bg2.png");
  enemy = loadImage("img/enemy.png");
  fighter = loadImage("img/fighter.png");
  hp = loadImage("img/hp.png");
  treasure = loadImage("img/treasure.png");
  
  enemyPosition_y = floor(random(419));
  
  bloodWdith = floor(random(25,199));
  
  treasurePosition_x = floor(random(600));
  treasurePosition_y = floor(random(440));
  
}

void draw() {
   
   //backGround1
   backGroundPosition_1 += 1;
   if(backGroundPosition_1 == 641){
     backGroundPosition_1 = -640;
   }
   image(backGround1, backGroundPosition_1, 0);
   
   //backGround2
   backGroundPosition_2 += 1 ;
   if(backGroundPosition_2 == 641){
     backGroundPosition_2 = -641;
   }
   image(backGround2, backGroundPosition_2, 0);
    
   
   //enemy
   enemyPosition_x += 3;
   enemyPosition_x %= 640;
   image(enemy, enemyPosition_x, enemyPosition_y);
   
   //fighter
   image(fighter, 589, 214);
   
   //blood
   fill(255, 0, 0);
   rect(10, 5,  bloodWdith, 20 );
   
   //hp
   image(hp, 0 ,0);
   
   //treasure
   image(treasure, treasurePosition_x, treasurePosition_y);
   
}
