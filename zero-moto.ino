/*
 * Teensy 3.1/3.2/4.0
 * Test program
 * Hi-Techno Barrio
 * 
 */

#define BRAKE 0
#define CW    1
#define CCW   2
#define CS_THRESHOLD 15   // Definition of safety current (Check: "1.3 Monster Shield Example").

//MOTOR 1
#define MOTOR_A1_PIN 2 
#define MOTOR_B1_PIN 0 

//MOTOR 2
#define MOTOR_A2_PIN 5
#define MOTOR_B2_PIN 1

#define PWM_MOTOR_1 4
#define PWM_MOTOR_2 3

#define CURRENT_SEN_1 A2
#define CURRENT_SEN_2 A0 

#define EN_PIN_1 7 
#define EN_PIN_2 8  

#define MOTOR_1 0
#define MOTOR_2 1
int led = 13;
short usSpeed = 150;  //default motor speed
unsigned short usMotor_Status = BRAKE;
 
void setup()                         
{
  pinMode(led, OUTPUT);
  pinMode(MOTOR_A1_PIN, OUTPUT);
  pinMode(MOTOR_B1_PIN, OUTPUT);

  pinMode(MOTOR_A2_PIN, OUTPUT);
  pinMode(MOTOR_B2_PIN, OUTPUT);

  pinMode(PWM_MOTOR_1, OUTPUT);
  pinMode(PWM_MOTOR_2, OUTPUT);

  pinMode(CURRENT_SEN_1, OUTPUT);
  pinMode(CURRENT_SEN_2, OUTPUT);  

  pinMode(EN_PIN_1, OUTPUT);
  pinMode(EN_PIN_2, OUTPUT);

  SerialUSBUSB.begin(9600);              // Initiates the SerialUSBUSB to do the monitoring 
  SerialUSBUSB.println("Begin motor control");
  SerialUSBUSB.println(); //Print function list for user selection
  SerialUSBUSB.println("Enter number for control option:");
  SerialUSBUSB.println("1. STOP");
  SerialUSBUSB.println("2. FORWARD");
  SerialUSBUSB.println("3. REVERSE");
  SerialUSBUSB.println("4. READ CURRENT");
  SerialUSBUSB.println("+. INCREASE SPEED");
  SerialUSBUSB.println("-. DECREASE SPEED");
  SerialUSBUSB.println();

 delay(500);
}

void loop() 
{
  char user_input;   
 
 twinkle();
  
  while(SerialUSBUSB.available())
  {
    user_input = SerialUSBUSB.read(); //Read user input and trigger appropriate function
    digitalWrite(EN_PIN_1, HIGH);
    digitalWrite(EN_PIN_2, HIGH); 
     
    if (user_input =='1')
    {
       Stop();
    }
    else if(user_input =='2')
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
   else if(user_input =='4')
    {
      readCurrentSensor();
    }
    else
    {
      SerialUSBUSB.println("Invalid option entered.");
    }
      
  }
}

void Stop()
{
  SerialUSBUSB.println("Stop");
  usMotor_Status = BRAKE;
  motorGo(MOTOR_1, usMotor_Status, 0);
  motorGo(MOTOR_2, usMotor_Status, 0);
}

void Forward()
{
  SerialUSBUSB.println("Forward");
  usMotor_Status = CW;
  motorGo(MOTOR_1, usMotor_Status, usSpeed);
  motorGo(MOTOR_2, usMotor_Status, usSpeed);
}

void Reverse()
{
  SerialUSBUSB.println("Reverse");
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
  
  SerialUSBUSB.print("Speed +: ");
  SerialUSBUSB.println(usSpeed);

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
  
  SerialUSBUSB.print("Speed -: ");
  SerialUSBUSB.println(usSpeed);

  motorGo(MOTOR_1, usMotor_Status, usSpeed);
  motorGo(MOTOR_2, usMotor_Status, usSpeed);  
}

void twinkle ()
{
  digitalWrite(led, HIGH);   // turn the LED on (HIGH is the voltage level)
  delay(10);                 // wait for a second
  digitalWrite(led, LOW);    // turn the LED off by making the voltage LOW
  delay(100);                // wait for a second
}

void readCurrentSensor()
{
 float current1,current2;
 current1 = analogRead(A2);
 current2 = analogRead(A0);
 
}
void motorGo(uint8_t motor, uint8_t direct, uint8_t pwm)         //Function that controls the variables: motor(0 ou 1), direction (cw ou ccw) e pwm (entra 0 e 255);
{
  if(motor == MOTOR_1)
  {
    if(direct == CW)
    {
      digitalWrite(MOTOR_A1_PIN, LOW); 
      digitalWrite(MOTOR_B1_PIN, HIGH);
    }
    else if(direct == CCW)
    {
      digitalWrite(MOTOR_A1_PIN, HIGH);
      digitalWrite(MOTOR_B1_PIN, LOW);      
    }
    else
    {
      digitalWrite(MOTOR_A1_PIN, LOW);
      digitalWrite(MOTOR_B1_PIN, LOW);            
    }
    
    analogWrite(PWM_MOTOR_1, pwm); 
  }
  else if(motor == MOTOR_2)
  {
    if(direct == CW)
    {
      digitalWrite(MOTOR_A2_PIN, LOW);
      digitalWrite(MOTOR_B2_PIN, HIGH);
    }
    else if(direct == CCW)
    {
      digitalWrite(MOTOR_A2_PIN, HIGH);
      digitalWrite(MOTOR_B2_PIN, LOW);      
    }
    else
    {
      digitalWrite(MOTOR_A2_PIN, LOW);
      digitalWrite(MOTOR_B2_PIN, LOW);            
    }
    
    analogWrite(PWM_MOTOR_2, pwm);
  }
}
