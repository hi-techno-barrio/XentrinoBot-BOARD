/*
 Christopher Coballes
 Hi-Techno Barrio
 -Test on Encoder
 -Test on Direction
 -Test on Speed
 -MCU: Teesy LC/4.0/3.2 
 */
// Teensy -LM2596-5V MOTO

#define BUFF_STATE_DIR  8   // Tri-State 
#define EN_PIN_1        0   // A0
#define PWM_MOTOR_1     6   // D5
#define MOTOR_A1_PIN    4   // D7
#define MOTOR_B1_PIN    3   // D8

#define EN_PIN_2        1   // A1
#define PWM_MOTOR_2     5   // D6
#define MOTOR_A2_PIN    7   // D4
#define MOTOR_B2_PIN    2   // D9 -OK


// Teensy -LM2596-5V MOTO
//#define MOTOR1_PWM   6   // D5
//#define MOTOR2_PWM   5   // D6
//#define MOTOR1_EN    0   // A0
//#define MOTOR2_EN    1   // A1
//#define BUFF_CTL     9   // Tri-State 
//#define MOTOR1_IN_A  4   // D7
//#define MOTOR1_IN_B  3   // D8
//#define MOTOR2_IN_A  8   // D4
//#define MOTOR2_IN_B  2   // D9
int led = 13;



//   avoid using pins with LEDs attached
void setup()                         
{
   Serial.println("Basic Encoder + Motor Test:");
  pinMode(MOTOR_A1_PIN, OUTPUT); 
  pinMode(MOTOR_A1_PIN, OUTPUT);
  pinMode(MOTOR_B1_PIN, OUTPUT);

  pinMode(MOTOR_A2_PIN, OUTPUT);
  pinMode(MOTOR_B2_PIN, OUTPUT);

  pinMode(PWM_MOTOR_1, OUTPUT);
  pinMode(PWM_MOTOR_2, OUTPUT);
  pinMode(led, OUTPUT);
  pinMode(EN_PIN_1, OUTPUT);
  pinMode(EN_PIN_2, OUTPUT);

  Serial.begin(9600);              // Initiates the serial to do the monitoring 
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
  
  twinkle();

  char  user_input;   
  String serialReceived;
  digitalWrite(BUFF_STATE_DIR, LOW); 
  while(Serial.available())
  {
    serialReceived = Serial.readStringUntil('\n');
    user_input = serialReceived.charAt(0);
    resets();   
    switch(user_input)
    {   
     case  '0' :
       testZero();
     break;
     case  '1' :
       testOne();
     break;
      case '8' :
       testEight();
     break;
     case '9' :
       testNine();
     break;
      case '4' :
       testFour();
     break;
     case '5' :
       testFive();
     break;
     case '6' :
       testSix();
     break;
     case '7'  :
       testSeven();
     break;
    default:
      Serial.println("Invalid option entered.");
      break;
    } // switch     
  } // while 
 } //loop

// resets()
void resets()
{

   digitalWrite(MOTOR_A1_PIN, LOW); 
  digitalWrite(MOTOR_A1_PIN, LOW);
  digitalWrite(MOTOR_B1_PIN, LOW);

  digitalWrite(MOTOR_A2_PIN, LOW);
  digitalWrite(MOTOR_B2_PIN, LOW);

  digitalWrite(PWM_MOTOR_1, LOW);
  digitalWrite(PWM_MOTOR_2, LOW);
  
  digitalWrite(EN_PIN_1, LOW);
  digitalWrite(EN_PIN_2, LOW);

}
 
//zero
void  testZero()
{
  Serial.println("A0");
  digitalWrite(EN_PIN_1, HIGH);   // turn the LED on (HIGH is the voltage level)
  delay(500);                  // wait for a second
  digitalWrite(EN_PIN_1, LOW);    // turn the LED off by making the voltage LOW
 delay(500);       
}
//one
void  testOne()
{
  Serial.println("A1");
 digitalWrite(EN_PIN_2, HIGH);   // turn the LED on (HIGH is the voltage level)
 delay(500);                  // wait for a second
 digitalWrite(EN_PIN_2, LOW);    // turn the LED off by making the voltage LOW
  delay(500); ;      
}
//two
void  testNine()
{
  Serial.println("D9");
  digitalWrite(MOTOR_B2_PIN, HIGH);   // turn the LED on (HIGH is the voltage level)
  delay(500);                  // wait for a second
  digitalWrite(MOTOR_B2_PIN, LOW);    // turn the LED off by making the voltage LOW
  delay(500);      
}
//three
void  testEight()
{
  Serial.println("D8");
  digitalWrite(MOTOR_B1_PIN, HIGH);   // turn the LED on (HIGH is the voltage level)
  delay(500);                  // wait for a second
  digitalWrite(MOTOR_B1_PIN, LOW);    // turn the LED off by making the voltage LOW
  delay(500);       
}
//four
void  testSeven()
{
  Serial.println("D7");
  digitalWrite(MOTOR_A1_PIN, HIGH);   // turn the LED on (HIGH is the voltage level)
  delay(500);                  // wait for a second
  digitalWrite(MOTOR_A1_PIN, LOW);    // turn the LED off by making the voltage LOW
  delay(500);       
}
//five
void  testFive()
{
  Serial.println("D5");
  digitalWrite(PWM_MOTOR_1, HIGH);   // turn the LED on (HIGH is the voltage level)
  delay(500);                 // wait for a second
  digitalWrite(PWM_MOTOR_1, LOW);    // turn the LED off by making the voltage LOW
  delay(500);      
}
//six
void  testSix()
{
  Serial.println("D6");
  digitalWrite(PWM_MOTOR_2, HIGH);   // turn the LED on (HIGH is the voltage level)
  delay(500);                 // wait for a second
  digitalWrite(PWM_MOTOR_2, LOW);    // turn the LED off by making the voltage LOW
  delay(500);      
}
// seven
void  testFour()
{
  Serial.println("D4");
  digitalWrite(MOTOR_A2_PIN , HIGH);   // turn the LED on (HIGH is the voltage level)
  delay(500);                  // wait for a second
  digitalWrite(MOTOR_A2_PIN , LOW);    // turn the LED off by making the voltage LOW
 delay(500);       
}


//blink
void twinkle ()
{
  digitalWrite(led, HIGH);   // turn the LED on (HIGH is the voltage level)
  delay(500);                  // wait for a second
  digitalWrite(led, LOW);    // turn the LED off by making the voltage LOW
 delay(500);                 // wait for a second
}
