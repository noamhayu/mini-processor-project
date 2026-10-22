ORG 0
cla       // clear AC
lda Q     // load Q value to AC
cma       // complement AC
inc       // double increment (-Q)
sta Q_M   // store AC value at Q_M
lda A1    // load A1 value to AC
sta SAVE_LOC I // store AC value at the address stored in SAVE_LOC
sta N_TERM     // store AC value at N_TERM
bsa OUT_subroutine   // jump to OUT_subroutine & save return adress
hlt            // halt the CPU
    
OUT_subroutine, DEC 0         // saving the return point of the OUT_subroutine
LOOP_OUT, cla             	// clear AC
          lda Q_M         	// load Q_M value to AC
          sta COUNT_Q     	// store AC value at COUNT_Q
          lda N_TERM          // load N_TERM value to AC
          sta L_TERM          // store AC value at L_TERM 
          isz SAVE_LOC        // increment SAVE_LOC value & skip if zero
          bsa IN_subroutine   // jump to IN_subroutine & save return adress
          sta N_TERM          // store AC value at N_TERM 
          sta SAVE_LOC I      // store AC value at the address stored in SAVE_LOC
          isz COUNT_9         // increment COUNT_9 value & skip if zero
          bun LOOP_OUT        // branch unconditionally to LOOP_OUT
          bun OUT_subroutine I  // return from OUT_subroutine

IN_subroutine, DEC 0          // saving the return point of the IN_subroutine
               cla            // clear AC
LOOP_IN, add L_TERM           // add L_TERM value to AC
         isz COUNT_Q          // increment COUNT_Q value & skip if zero
         bun LOOP_IN          // branch unconditionally to LOOP_IN  
         bun IN_subroutine I  // return from IN_subroutine

ORG 100     	   // start of data section at 100h
A1, DEC 2         // the first term of the sequence
Q, DEC 3          // the common ratio (Q) of the sequence
Q_M, DEC 0        // number of iterations of the IN_LOOP
COUNT_Q, DEC 0    // holds Q_M for repeated multiplication routine
COUNT_9, DEC -9   // number of iterations of the OUT_LOOP
N_TERM, DEC 0     // The resulting(new) term after multiplication
L_TERM, DEC 0     // the last term that needs to be multiplied by itself Q times
SAVE_LOC, HEX 200 // stores the location of the array elements

ORG 200       // start of data section at 200h
aa1, DEC 0    // array elements
a2, DEC 0
a3, DEC 0
a4, DEC 0
a5, DEC 0
a6, DEC 0
a7, DEC 0
a8, DEC 0
a9, DEC 0
a10, DEC 0
end           // end code
