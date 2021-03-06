#define BRAKE 0
#define CW    1
#define CCW   2
#define CS_THRESHOLD 15   // Definition of safety current (Check: "1.3 Monster Shield Example").

//MOTOR 1
#define MOTOR_A1_PIN 34 //7
#define MOTOR_B1_PIN 36 //8

//MOTOR 2
#define MOTOR_A2_PIN 32//4
#define MOTOR_B2_PIN 38 //9

//MOTOR 3
#define MOTOR_A3_PIN 7//4
#define MOTOR_B3_PIN 9 //9

//MOTOR 4
#define MOTOR_A4_PIN 8//4
#define MOTOR_B4_PIN 11 //9


#define PWM_MOTOR_1 46 //5
#define PWM_MOTOR_2 44 //6

#define PWM_MOTOR_3 6 //5
#define PWM_MOTOR_4 5 //6

#define CURRENT_SEN_1 A2
#define CURRENT_SEN_2 A0 //A3

#define EN_PIN_1 A6//A0
#define EN_PIN_2 A4 //A1
#define EN_PIN_3 A15//A0
#define EN_PIN_4 A13 //A1

#define MOTOR_1 0
#define MOTOR_2 1

short usSpeed = 150;  //default motor speed
unsigned short usMotor_Status = BRAKE;
int led = 13; 
void setup()                         
{
  pinMode(MOTOR_A1_PIN, OUTPUT);
  pinMode(MOTOR_B1_PIN, OUTPUT);

  pinMode(MOTOR_A2_PIN, OUTPUT);
  pinMode(MOTOR_B2_PIN, OUTPUT);
  
  pinMode(MOTOR_A3_PIN, OUTPUT);
  pinMode(MOTOR_B3_PIN, OUTPUT);

  pinMode(MOTOR_A4_PIN, OUTPUT);
  pinMode(MOTOR_B4_PIN, OUTPUT);


  pinMode(PWM_MOTOR_1, OUTPUT);
  pinMode(PWM_MOTOR_2, OUTPUT);

  pinMode(PWM_MOTOR_3, OUTPUT);
  pinMode(PWM_MOTOR_4, OUTPUT);


  pinMode(CURRENT_SEN_1, OUTPUT);
  pinMode(CURRENT_SEN_2, OUTPUT);  

  pinMode(EN_PIN_1, OUTPUT);
  pinMode(EN_PIN_2, OUTPUT);
  
  pinMode(EN_PIN_3, OUTPUT);
  pinMode(EN_PIN_4, OUTPUT);

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
twinkle();  
  
  while(Serial.available())
  {
    SerialReceived = Serial.readStringUntil('\n');
      user_input = SerialReceived.charAt(0);


    digitalWrite(EN_PIN_1, HIGH);
    digitalWrite(EN_PIN_2, HIGH); 
    digitalWrite(EN_PIN_3, HIGH);
    digitalWrite(EN_PIN_4, HIGH); 

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

void twinkle ()
{

  digitalWrite(led, HIGH);   // turn the LED on (HIGH is the voltage level)
  delay(10);               // wait for a second
  digitalWrite(led, LOW);    // turn the LED off by making the voltage LOW
  delay(10);  
}


void motorGo(uint8_t motor, uint8_t direct, uint8_t pwm)         //Function that controls the variables: motor(0 ou 1), direction (cw ou ccw) e pwm (entra 0 e 255);
{
  if(motor == MOTOR_1)
  {
    if(direct == CW)
    {
      digitalWrite(MOTOR_A1_PIN, LOW); 
      digitalWrite(MOTOR_B1_PIN, HIGH);
      digitalWrite(MOTOR_A3_PIN, LOW); 
      digitalWrite(MOTOR_B3_PIN, HIGH);
    }
    else if(direct == CCW)
    {
      digitalWrite(MOTOR_A1_PIN, HIGH);
      digitalWrite(MOTOR_B1_PIN, LOW);  
      digitalWrite(MOTOR_A3_PIN, HIGH); 
      digitalWrite(MOTOR_B3_PIN, LOW);    
    }
    else
    {
      digitalWrite(MOTOR_A1_PIN, LOW);
      digitalWrite(MOTOR_B1_PIN, LOW); 
      digitalWrite(MOTOR_A3_PIN, LOW); 
      digitalWrite(MOTOR_B3_PIN, LOW);           
    }
    
    analogWrite(PWM_MOTOR_1, pwm); 
    analogWrite(PWM_MOTOR_3, pwm); 
  }
  else if(motor == MOTOR_2)
  {
    if(direct == CW)
    {
      digitalWrite(MOTOR_A2_PIN, LOW);
      digitalWrite(MOTOR_B2_PIN, HIGH);
      digitalWrite(MOTOR_A4_PIN, LOW);
      digitalWrite(MOTOR_B4_PIN, HIGH);
    }
    else if(direct == CCW)
    {
      digitalWrite(MOTOR_A2_PIN, HIGH);
      digitalWrite(MOTOR_B2_PIN, LOW); 
      digitalWrite(MOTOR_A4_PIN, HIGH);
      digitalWrite(MOTOR_B4_PIN, LOW);     
    }
    else
    {
      digitalWrite(MOTOR_A2_PIN, LOW);
      digitalWrite(MOTOR_B2_PIN, LOW);
      digitalWrite(MOTOR_A4_PIN, LOW);
      digitalWrite(MOTOR_B4_PIN, LOW);            
    }
    
    analogWrite(PWM_MOTOR_2, pwm);
    analogWrite(PWM_MOTOR_4, pwm);
  }

  
  
}
