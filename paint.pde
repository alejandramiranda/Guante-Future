color c=color(0);
int x, y, xp, yp;
int tamanou=1,tamanor=1,clic=0;
char letra= 'l';

void setup()
{
  size(640, 480,P3D);
  background(255);
  stroke(c,c,c);
}

void draw()
{                        
  
  stroke(c,c,c);
  line(0, 0, 0, 30);                    
  line(0, 0, 30, 0);                     
  line(0, 30, 0, 0);                     
  line(30, 0, 0, 0);                      
  
  
  fill(c);
  rect(610,0,30,30);
  fill(255);
  rect(0,0,30,30);   //borrador
  fill(c);
  

  
  
  
      if(clic==1) 
      {

            switch(letra) 
            
            {
                    
                case 'l': 
                    
                    strokeWeight(tamanou);
                    line(mouseX, mouseY, pmouseX, pmouseY);                     
                    strokeWeight(0);
                      
                    break;
                      
                case 'c': 
                      
                    strokeWeight(0);  
                    rect(mouseX, mouseY, tamanor, tamanou);  
                      
                    break;

                case 'o': 
                      
                    strokeWeight(0);  
                    ellipse(mouseX, mouseY, tamanor, tamanou);  
                      
                    break;
                      
                case 't': 
                      
                    strokeWeight(0);  
                    triangle(mouseX, mouseY,mouseX+tamanor, mouseY,mouseX+(tamanor/2), mouseY-(tamanou/2));
                      
                    break;
                    
                case 'e': 
                    stroke(0,0,0);    
                    lights();
                    translate(mouseX, mouseY, tamanou/2);
                    sphere(tamanor); 
                     
                      break;                
                    
                    
               default:            
                       strokeWeight(tamanou);
                       line(mouseX, mouseY, pmouseX, pmouseY);                    
                       strokeWeight(0);
                      break;

               }
     
      }
     
}




void mousePressed() 
{
  clic=1;
}
void mouseReleased()

{
  clic=0;
}


void keyPressed() 
{
  

  
  if (key == 'l')
  letra= 'l';
  
  if (key == 'c')
  letra= 'c';
  
  if (key == 'o')
  letra= 'o';  
  
  if (key == 't')
  letra= 't';  
  
  if (key == 'e')
  letra= 'e'; 
  
  if (key == CODED) 
        
        {
        if (keyCode == UP) tamanou+=5; 
     
        if (keyCode == DOWN) tamanou-=5;
        
        if (keyCode == LEFT) tamanor-=5;
    
        if (keyCode == RIGHT) tamanor+=5;
        }
  
  if (tamanou<=0)tamanou=1;
  if (tamanor<=0)tamanor=1;
  
  if(key== 'b') background(random(0,255),random(0,255),random(0,255));
  if(key== 'v') c = color(random(0,255),random(0,255),random(0,255));
}


void mouseClicked()

{ 
   
  //borrador 
  if ((mouseX < 30) && (mouseX > 1)  
   && (mouseY < 30)  && (mouseY > 1))
   
   {  
   background(255);   
   }
   
}