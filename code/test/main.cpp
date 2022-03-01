/*
 * This file was originally created on 2022.02.14
 * as part of the project "test"
 * Author: Marko Kharkhalis {@literal (marko.kharkhalis@gmail.com)}
 * For information about the license for this file, please contact the author
 */

/* 
 * File:   main.cpp
 * Author: Marko Kharkhalis {@literal (marko.kharkhalis@gmail.com)}
 *
 * Created on 14 February 2022, 15:42
 */

#include <Arduino.h>

#undef min
#undef max

#include <mcu-timer.h>
#include <mcu-fsm.h>

// Define global variables

// ============================ TIMER CLASS ============================================================================

class Timer : public McuTimer {
   protected:
      unsigned long t() { return millis(); };
};

// ============================ FSM CLASS ==============================================================================

class LightFSM : public McuFSM {
   private:
      
      unsigned char pinN;
      Timer timer;
      unsigned short int delay;
      
      enum LightState {
         ON,
         OFF
      };
      
      //LightState lState;
      
      void On (  ) {
         //lState = LightState::ON;
         setState(LightState::ON, false);
      }
      
      void Off (  ) {
         //lState = LightState::OFF;
         setState(LightState::OFF, false);
      }
      
      bool isOn ( ) {
         return getState() == LightState::ON;
      }
      
      void process( uint8_t state, bool entry ) {
         
         if ( entry ) {
            
            if ( isOn() ) {
               
               digitalWrite(pinN, HIGH);
               timer.reset();
               timer.setCountdown(delay);
            
            } else {
               
               digitalWrite(pinN, LOW);
               timer.reset();
               timer.setCountdown(delay);
         
            };
         };
         
         if ( timer.isZero() ) {
            
            isOn() ? Off() : On();
            
         };
         
      }
      
   public:
      
      LightFSM( unsigned char pin, unsigned short int delms ){
         
         pinN = pin;
         delay = delms;
         pinMode(pinN, OUTPUT);
         timer.reset();
         timer.setCountdown(delay);
         Off();
         
      };

};


// ============================ MAIN PROGRAM ===========================================================================

// Initialise global objects

LightFSM light1(13, 100),light2(12,200),light3(11,400),light4(10,800),light5(9,1600),light6(8,3200);

void setup(){
   
}

void loop(){
   
   light1.iterate();
   light2.iterate();
   light3.iterate();
   light4.iterate();
   light5.iterate();
   light6.iterate();
   
}