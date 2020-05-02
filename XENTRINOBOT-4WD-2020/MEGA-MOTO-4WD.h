/* 
 XentrinoBot Controller Board
  Christopher Coballes
  Hi-Techno Barrio
  
 */
// MOTOR 1
#define	        M1_ENC_A 	    15					
#define	        M1_ENC_B 	    3						
#define		M1_PWM1             46
#define	        M1_IN_A1/M1_CW      34
#define		M1_IN_B1 /M1_CCW    36
#define		ENA_1               A6
#define		CS_1                A2

// MOTOR 2	
#define		M2_ENC_A	     17			
#define		M2_ENC_B             2
#define		M2_PWM2		     44
#define		M2_IN_A2/M2_CW	     32
#define		M2_IN_B2/M2_CCW	     38
#define	        ENA_2	             A4
#define		CS_2                 A0
	
// MOTOR 3		
#define		M3_ENC_A 	     40	
#define	        M3_ENC_B	     18				
#define		M3_PWM3  	      6
#define		M3_IN_A/M3_CW 	      7
#define		M3_IN_B/M3_CCW 	      9
#define		ENA_3                A15
#define		CS_3                 A11
			
// MOTOR 4	
#define		M4_ENC_A	      42		
#define		M4_ENC_B 	      19			
#define		M4_PWM4  	       5
#define		M4_IN_A/M4_CW 	       8
#define		M4_IN_B/M4_CCW 	      11
#define		ENA_4	             A13						
#define		CS_4		      A9

//       IMU MPU6050
#define 	SDA  20
#define 	SCL  21

//       HEADER 1
//H1P1 VCC
//H1P2 GND
//H1P3     3.3V
#define H1P4     1 //TX
#define H1P5     0 // RX
//H1P6 VIN

//      HEADER 2	
//H2P1  VIN
#define H2P2     4
#define H2P3    10 
#define H2P4    12
#define H2P5    14 
#define H2P6    16

//      HEADER 3
#define H3P1    28
#define H3P2    49
#define H3P3    26
#define H3P4    24
#define H3P5    22
#define H3P6    45

//HEADER 4
#define H4P1    35
#define H4P2    33
#define H4P3    A7
#define H4P4    A5 
#define H4P5    A3
#define H4P6    A1

//    HEADER 5
#define H5P1   47
#define H5P2   AREF
#define H5P3   A14
#define H5P4   A12
#define H5P5   A10
#define H5P6   A8

//    HEADER 6
//H6P1   5V
//H6P2  GND
#define H6P3    43
#define H6P4    41
#define H6P5    39
#define H6P6    37

//    HEADER 7
//H7P1  GND
#define H7P2    53
#define H7P3    52
#define H7P4    50
#define H7P5    48
//H7P6    GND


//HEADER 8
#define H8P1   RST
#define H8P2   SCK
#define H8P3   MISO
//H8P4   5V
#define H8P5   MOSI
//H8P6   GND

//HEADER 9
#define H9P1    23
#define H9P2    25
#define H9P3    27
#define H9P4    29
#define H9P5    31
#define H9P6    30
