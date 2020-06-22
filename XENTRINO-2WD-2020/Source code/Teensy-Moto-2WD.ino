/*
Christopher M Coballes
Hi-Techno Barrio
*/

#define ENCODER_OPTIMIZE_INTERRUPTS // comment this out on Non-Teensy boards
#include "xentrino_base_config.h"
#include "xentrino.h"
#include "Encoder.h"

#define set_PWM 10
//#define MAX_RPM  100
#define EN_PIN_1 7
#define EN_PIN_2 8

#define MOTOR_1  0
#define MOTOR_2  1
#define BRAKES   0
#define CW       1
#define CCW      2
#define CS_THRESHOLD 15   // Definition of safety current (Check: "1.3 Monster Shield Example")

short usSpeed = 150;  //default motor speed
unsigned short usMotor_Status = BRAKES;
 
void setup()                         
{
  Serial.begin(115200);              // Initiates the serial to do the monitoring 
  Serial.println("Begin motor control");
  Serial.println(); //Print function list for user selection
  Serial.println("Enter number for control option:");
  Serial.println("1. STOP");
  Serial.println("2. FORWARD");
  Serial.println("3. REVERSE");
  Serial.println("4. READ CURRENT");
  Serial.println("+. INCREASE SPEED");
  Serial.println("-. DECREASE SPEED");
  Serial.println();
}

void loop() 
{
  char  user_input;   
  String serialReceived;
  
  
  while(Serial.available())
  {
      serialReceived = Serial.readStringUntil('\n');
      user_input = serialReceived.charAt(0);


    digitalWrite(EN_PIN_1, HIGH);
    digitalWrite(EN_PIN_2, HIGH);
     
     switch(user_input)
        {
          case '1':
          Stop();
          break;
          
          case '2':
          Forward();
          break;
          
          case '3':
           Reverse();
          break;
          
          case  '+':
          IncreaseSpeed();
          break;
          
          case  '-' :
           DecreaseSpeed();
          break ;
          
          default:
            Serial.println("Invalid option entered.");
          break;
        } // switch
      
  }  
}

void Stop()
{
  Serial.println("Stop");
  usMotor_Status = BRAKES;
  motorGo(MOTOR_1, usMotor_Status, 0);
  motorGo(MOTOR_2, usMotor_Status, 0);
}

void Forward()
{
  Serial.println("Forward");
  usMotor_Status = CW;
  motorGo(MOTOR_1, usMotor_Status, usSpeed);
  motorGo(MOTOR_2, usMotor_Status, usSpeed);
}

void Reverse()
{
  Serial.println("Reverse");
  usMotor_Status = CCW;
  motorGo(MOTOR_1, usMotor_Status, usSpeed);
  motorGo(MOTOR_2, usMotor_Status, usSpeed);
}

void IncreaseSpeed()
{
  usSpeed = usSpeed + 10;
  if(usSpeed > 255)
  {
    usSpeed = 255;  
  }
  
  Serial.print("Speed +: ");
  Serial.println(usSpeed);

  motorGo(MOTOR_1, usMotor_Status, usSpeed);
  motorGo(MOTOR_2, usMotor_Status, usSpeed);  
}

void DecreaseSpeed()
{
  usSpeed = usSpeed - 10;
  if(usSpeed < 0)
  {
    usSpeed = 0;  
  }
  
  Serial.print("Speed -: ");
  Serial.println(usSpeed);

  motorGo(MOTOR_1, usMotor_Status, usSpeed);
  motorGo(MOTOR_2, usMotor_Status, usSpeed);  
}


void motorGo(uint8_t motor, uint8_t direct, uint8_t pwm)         //Function that controls the variables: motor(0 ou 1), direction (cw ou ccw) e pwm (entra 0 e 255);
{
  switch (motor)
  {
    case  MOTOR_1 :
       switch (direct)
         {
          case CW:
              digitalWrite(MOTOR1_IN_A, LOW); 
              digitalWrite(MOTOR1_IN_B, HIGH);
           break;
           
           case CCW:
             digitalWrite(MOTOR1_IN_A, HIGH); 
             digitalWrite(MOTOR1_IN_B, LOW);     
           break;
           
           case BRAKES: 
            digitalWrite(MOTOR1_IN_A, LOW); 
            digitalWrite(MOTOR1_IN_B, LOW);
           break;
          }// motor 1
    analogWrite(MOTOR1_PWM, pwm); 
    break;

    case MOTOR_2 :
       switch (direct)
            {
           case CW:
              digitalWrite(MOTOR2_IN_A, LOW); 
              digitalWrite(MOTOR2_IN_B, HIGH);
           break;
           
           case CCW:
             digitalWrite(MOTOR2_IN_A, HIGH); 
             digitalWrite(MOTOR2_IN_B, LOW);     
           break;
           
           case BRAKES: 
            digitalWrite(MOTOR2_IN_A, LOW); 
            digitalWrite(MOTOR2_IN_B, LOW);
           break;
            }//motor 2
    analogWrite(MOTOR2_PWM , pwm); 
    break;
  } // switches
}
