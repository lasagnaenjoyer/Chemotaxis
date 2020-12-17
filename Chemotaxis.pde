Bacteria[] dust = new Bacteria[60];
 void setup()   
 {  
  
   size(500,500);
 
   for(int i = 0; i < dust.length; i++)
   {
       dust[i] = new Bacteria((int)(Math.random()*470)+15, 10, 0);     
   }
   //Math.random()*5)-2,(int)(Math.random()*3)-1
 }   
 void draw()   
 {    
    background(0);
   //move and show the bacteria  
   for(int i = 0; i < dust.length; i++)
   {
       if (i % 5 == 0)
       {
         dust[i].largerSpeck();
         dust[i].dustFallFaster();
       }
       else
       {
         dust[i].smallSpeck();
         dust[i].dustFall();
        
       }
   
   }
   
 }  
 class Bacteria    
 { 
   int grey, darkerGrey, gibbon, ape;
   Bacteria(int x, int y, int z)
   {
     grey = color(163, 158, 158);
     darkerGrey = color(51, 41, 41);
     gibbon = x;
     ape = y;
   }
   void smallSpeck()
   {
     fill(grey);
     noStroke();
     ellipse(gibbon, ape, 10, 10);
   }
   void largerSpeck()
   {
     fill(darkerGrey);
     noStroke();
     ellipse(gibbon, ape, 20, 20);
   }
   void dustFall()
   {
     gibbon =+ (int)(Math.random()*500)+10;
     ape = ape + (int)(Math.random()*4)+1;
     if (ape > 575)
     {
       ape = 10;
     }
   }
   void dustFallFaster()
   {
     gibbon =+ (int)(Math.random()*500)+10;
     ape = ape + (int)(Math.random()*2)+2;
     if (ape > 575)
     {
       ape = 10;
     }
   }
 }    
