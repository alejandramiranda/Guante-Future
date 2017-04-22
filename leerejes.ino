double a= 29.43/ 512, ax, ay, az, roll, pitch, fax, faz, fay;
int y=0;
void setup() 
{
  // put your setup code here, to run once:

Serial.begin(9600);

}

void loop() 
{

 analogReference(EXTERNAL);// 3.3V

 if((analogRead(A0)>=512))
 {

 ax = ((analogRead(A0)-502)*a); 
// Serial.print(ax);
// Serial.print("\t");
 }
 
 else
 {
 ax = ((analogRead(A0))-502)*a;
// Serial.print(ax);
// Serial.print("\t"); 
 }
 
 

 if(analogRead(A1)>=512)
 {
 ay = ((analogRead(A1)-503)*a);
// Serial.print(ay);
// Serial.print("\t");
 }
 
 else
 {
 ay = ((analogRead(A1))-503)*a; 
// Serial.print(ay);
// Serial.print("\t"); 
 }


 if(analogRead(A2)>=512)
 {
  az = ((analogRead(A2)-445)*a);
// Serial.print(az);
// Serial.print("\t");
 }
 
 else
 {
 az = ((analogRead(A2))-445)*a; 
// Serial.print(az);
// Serial.print("\t"); 
 }

fax = int(ax * 0.5 + (fax*0.5));

fay = int(ay * 0.5 + (fay*0.5));

faz = int(az * 0.5 + (faz*0.5));
if(y>10)
{
roll = int((atan2(-fax,faz)*180))/PI;
Serial.print(int(roll)); 
Serial.print(':'); 
pitch = int(atan2(fay, sqrt(fax*fax + faz*faz))*180)/PI;
Serial.print(int(pitch)); 
Serial.print(':'); 
Serial.print(int(ax)); 
Serial.print(':'); 
Serial.print(int(ay));
Serial.print(':'); 
Serial.println(int(az));

}
y++;

if(y==255) y=11;
}
