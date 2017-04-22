import processing.serial.*;

// Objeto port tipo Serial
Serial port;
// Alamcena el valor leido 
int valueroll, valuepitch, valuez,valueay, valueax, valueaz, e=0, i=1;

void setup()

{
  size(630, 630, P3D);
  port = new Serial(this, Serial.list()[0], 9600);
  port.clear();
  port.bufferUntil('\n');
}

void draw()
{
  
  //background(255);
  fill(random(0,255), random(0,255), random(0,255));
  translate(valueroll,valuepitch);
  rect(300,300,valueay*10,valueay*10);
}


void serialEvent(Serial p) 
{
   
  String Dato = p.readString().trim();
       println(Dato);
      
        if( Dato != null)
      
{          
          String[] list = split(Dato, ':');
          
          if(list.length==5)
          {
          valueroll = int(list[0]);
          valuepitch = int(list[1]);
          valueax = int(list[2]);
          valueay = int(list[3]);
          valueaz = int(list[4]);
      }

}
}
    
  