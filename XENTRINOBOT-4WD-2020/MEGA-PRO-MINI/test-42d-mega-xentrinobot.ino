/*
 * Christopher Coballes
 * Hi-Techno Barrio
 * Philippines
 * 
 */ Please check these libraries to Xentrinobot
 */
#define XENTRINOBOT
//#define ENCODER_OPTIMIZE_INTERRUPTS // comment this out on Non-Teensy boards
#include "xentrino_base_config.h"
#include "xentrino.h"
#include "Encoder.h"

#define BRAKE 0
#define CW    1
#define CCW   2
#define CS_THRESHOLD 15   // Definition of safety current (Check: "1.3 Monster Shield Example").
#define MOTOR_1 1
#define MOTOR_2 2
#define MOTOR_3 3
#define MOTOR_4 4

#define led 13

short usSpeed = 150;  //default motor speed
unsigned short usMotor_Status = BRAKE;

Controller MOTO1_controller(Controller::MOTOR_DRIVER, MOTOR1_PWM, MOTOR1_IN_A, MOTOR1_IN_B);
Controller MOTO2_controller(Controller::MOTOR_DRIVER, MOTOR2_PWM, MOTOR2_IN_A, MOTOR2_IN_B); 
Controller MOTO3_controller(Controller::MOTOR_DRIVER, MOTOR3_PWM, MOTOR3_IN_A, MOTOR3_IN_B);
Controller MOTO4_controller(Controller::MOTOR_DRIVER, MOTOR4_PWM, MOTOR4_IN_A, MOTOR4_IN_B); 

void setup()                         
{

  Serial.begin(57600);              // Initiates the Serial to do the monitoring 
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
  String SerialReceived;
  led_indicator();
  
  while(Serial.available())
  {
    SerialReceived = Serial.readStringUntil('\n');
      user_input = SerialReceived.charAt(0);
      
    if (user_input== '1')
    { 
     Stop();
    }
    else
    if (user_input== '2')
    { 
     Forward();
    }
    
    else if(user_input =='3')
    {
      Reverse();
    }
    else if(user_input =='+')
    {
      IncreaseSpeed();
    }
    else if(user_input =='-')
    {
      DecreaseSpeed();
    }
    else
    {
      Serial.println("Invalid option entered.");
    }
      
  }
}

void Stop()
{
  Serial.println("Stop");
  usMotor_Status = BRAKE;
  motorGo(MOTOR_1, usMotor_Status, usSpeed);
  motorGo(MOTOR_2, usMotor_Status, usSpeed);
  motorGo(MOTOR_3, usMotor_Status, usSpeed);
  motorGo(MOTOR_4, usMotor_Status, usSpeed);
}

void Forward()
{
  Serial.println("Forward");
  usMotor_Status = CW;
  motorGo(MOTOR_1, usMotor_Status, usSpeed);
  motorGo(MOTOR_2, usMotor_Status, usSpeed);
  motorGo(MOTOR_3, usMotor_Status, usSpeed);
  motorGo(MOTOR_4, usMotor_Status, usSpeed);
}

void Reverse()
{
  Serial.println("Reverse");
  usMotor_Status = CCW;
  motorGo(MOTOR_1, usMotor_Status, usSpeed);
  motorGo(MOTOR_2, usMotor_Status, usSpeed);
  motorGo(MOTOR_3, usMotor_Status, usSpeed);
  motorGo(MOTOR_4, usMotor_Status, usSpeed);
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
  motorGo(MOTOR_3, usMotor_Status, usSpeed);
  motorGo(MOTOR_4, usMotor_Status, usSpeed);
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
  motorGo(MOTOR_3, usMotor_Status, usSpeed);
  motorGo(MOTOR_4, usMotor_Status, usSpeed); 
}

void twinkle ()
{

  digitalWrite(led, HIGH);   // turn the LED on (HIGH is the voltage level)
  delay(10);               // wait for a second
  digitalWrite(led, LOW);    // turn the LED off by making the voltage LOW
  delay(10);  
}


void motorGo(uint8_t motor, uint8_t direct, uint8_t pwm)         //Function that controls the variables: motor(0 ou 1), direction (cw ou ccw) e pwm (entra 0 e 255);
{
  switch (motor)
  {
    case  MOTOR_1 :
            if(direct == CW)
            {       
            digitalWrite(MOTOR1_IN_A , LOW);
            digitalWrite(MOTOR1_IN_B , HIGH);    
            }
            else if(direct == CCW)
            {
            digitalWrite(MOTOR1_IN_A , HIGH);
            digitalWrite(MOTOR1_IN_B , LOW);    
            }else 
            if (direct == BRAKE)
            {
            digitalWrite(MOTOR1_IN_A , LOW);
            digitalWrite(MOTOR1_IN_B , LOW);
            }
           
          MOTO1_controller.testMotor(MOTOR1_PWM); 
    break;

    case MOTOR_2 :
           if(direct == CW)
            {       
            digitalWrite(MOTOR2_IN_A , LOW);
            digitalWrite(MOTOR2_IN_B , HIGH);    
            }
            else if(direct == CCW)
            {
            digitalWrite(MOTOR2_IN_A , HIGH);
            digitalWrite(MOTOR2_IN_B , LOW);    
            }else 
            if (direct == BRAKE)
            {
            digitalWrite(MOTOR2_IN_A , LOW);
            digitalWrite(MOTOR2_IN_B , LOW);
            }    
       MOTO2_controller.testMotor(MOTOR2_PWM);  
    break;

        case MOTOR_3 :
           if(direct == CW)
            {       
            digitalWrite(MOTOR3_IN_A , LOW);
            digitalWrite(MOTOR3_IN_B , HIGH);    
            }
            else if(direct == CCW)
            {
            digitalWrite(MOTOR3_IN_A , HIGH);
            digitalWrite(MOTOR3_IN_B , LOW);    
            }else 
            if (direct == BRAKE)
            {
            digitalWrite(MOTOR3_IN_A , LOW);
            digitalWrite(MOTOR3_IN_B , LOW);
            }    
       MOTO2_controller.testMotor(MOTOR3_PWM);  
    break;

        case MOTOR_4 :
           if(direct == CW)
            {       
            digitalWrite(MOTOR4_IN_A , LOW);
            digitalWrite(MOTOR4_IN_B , HIGH);    
            }
            else if(direct == CCW)
            {
            digitalWrite(MOTOR4_IN_A , HIGH);
            digitalWrite(MOTOR4_IN_B , LOW);    
            }else 
            if (direct == BRAKE)
            {
            digitalWrite(MOTOR4_IN_A , LOW);
            digitalWrite(MOTOR4_IN_B , LOW);
            }    
       MOTO2_controller.testMotor(MOTOR4_PWM);  
    break;
  }
}

void led_indicator()
{
  digitalWrite(led, HIGH);   // turn the LED on (HIGH is the voltage level)
  delay(100);               // wait for a second
  digitalWrite(led, LOW);    // turn the LED off by making the voltage LOW
  delay(100);               // wait for a second
}
