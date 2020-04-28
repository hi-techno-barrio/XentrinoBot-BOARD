/*
Christopher M Coballes
Hi-Techno Barrio
*/

#define BRAKES 0
#define CW    1
#define CCW   2
#define CS_THRESHOLD 15   // Definition of safety current (Check: "1.3 Monster Shield Example").

//MOTOR 1
#define MOTOR_A1_PIN 2
#define MOTOR_B1_PIN 1 

//MOTOR 2
#define MOTOR_A2_PIN  5
#define MOTOR_B2_PIN  0

#define PWM_MOTOR_1 4 
#define PWM_MOTOR_2 3 

#define CURRENT_SEN_1 A2
#define CURRENT_SEN_2 A3

#define EN_PIN_1 7
#define EN_PIN_2 8

#define MOTOR_1 0
#define MOTOR_2 1

short usSpeed = 150;  //default motor speed
unsigned short usMotor_Status = BRAKES;
 
void setup()                         
{
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
            if(direct == CW)
            {
              digitalWrite(MOTOR_A1_PIN, LOW); 
              digitalWrite(MOTOR_B1_PIN, HIGH);
            }
            else if(direct == CCW)
            {
              digitalWrite(MOTOR_A1_PIN, HIGH);
              digitalWrite(MOTOR_B1_PIN, LOW);      
            }else 
            if (direct == BRAKES)
            {
            digitalWrite(MOTOR_A1_PIN, LOW);
            digitalWrite(MOTOR_B1_PIN, LOW);
            }
            analogWrite(PWM_MOTOR_1, pwm); 
    break;

    case MOTOR_2 :
           if(direct == CW)
            {
              digitalWrite(MOTOR_A2_PIN, LOW); 
              digitalWrite(MOTOR_B2_PIN, HIGH);
            }
            else if(direct == CCW)
            {
              digitalWrite(MOTOR_A2_PIN, HIGH);
              digitalWrite(MOTOR_B2_PIN, LOW);      
            }else 
            if (direct == BRAKES)
            {
            digitalWrite(MOTOR_A2_PIN, LOW);
            digitalWrite(MOTOR_B2_PIN, LOW);
            }
            analogWrite(PWM_MOTOR_2, pwm); 
    break;
  } // switches
}
