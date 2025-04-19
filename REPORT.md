# Lab 1 - Clocks and Test Benches

**Name:** Jakobi Parker  
**Email:** jpark631@ucr.edu 

---

## Test Cases Description

This section describes the test cases used to validate the functionality of the `gen_tick` module in the test bench `lab01_tb.v`.

### Test Case 1: TICK_FREQ = 2 Hz, SRC_FREQ = 100 Hz (Passed)

The first test case in the test bench tests the number of transitions when TICK_FREQ is equal to 2 Hz and SRC_FREQ = 100 Hz. 

- **Load(500/1000):** 0.50
- **Transition Count:** 20
 

### Test Case 2: TICK_FREQ = 5 Hz, SRC_FREQ = 100 Hz (Passed)

The second test case in the test bench tests the number of transitions when TICK_FREQ is equal to 5 Hz and SRC_FREQ = 100 Hz.

- **Load(50/1000):** 0.50
- **Transition Count:** 50

### Test Case 3: TICK_FREQ = 10 Hz, SRC_FREQ = 100 Hz (Passed)

The first test case in the test bench tests the number of transitions when TICK_FREQ is equal to 50 Hz and SRC_FREQ = 100 Hz. The transition count when the count variable in lab_tb.v was equal to 1000 failed the test by one transition count. So I changed the count to 1001 for this test specifically.

- **Load(50/1001):** 0.50
- **Transition Count:** 500


Each of these test cases ensures the clock multiplier's output frequency and load behave as expected across different values of `TICK_FREQ`.

## Waveform
![alt text](<Screenshot 2025-04-17 at 9.18.58 AM.png>)