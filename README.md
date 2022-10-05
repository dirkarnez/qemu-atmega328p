qemu-atmega328p
===============
## Notes
- to compile: <kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>S</kbd>
- `delay` does not work at the moment:
    - [Run arduino mega 2560 elfs in qemu · Issue #1 · lucasw/arduino_qemu_test](https://github.com/lucasw/arduino_qemu_test/issues/1)
        - > The arduino delay() locks up, while delayMicroseconds() may not be delaying at all, but util/delay.h + delay_ms() runs ~10x faster than real time
            > 
            > ```c
            > #include <util/delay.h>
            > 
            > _delay_ms(1000);
            > ```
            > (also millis() just returns 0- some clock on the arduino isn't getting emulated?)
- ```c
    /*
     * https://store.arduino.cc/arduino-uno-rev3
     * https://www.arduino.cc/en/uploads/Main/arduino-uno-schematic.pdf
     */
    mc->desc        = "Arduino UNO (ATmega328P)";
    mc->alias       = "uno";
    amc->mcu_type   = TYPE_ATMEGA328_MCU;
    amc->xtal_hz    = 16 * 1000 * 1000;
    ```
### Tutorials
- [**lucasw/arduino_qemu_test: Project wombat**](https://github.com/lucasw/arduino_qemu_test)
- [qemu-avr-tests/free-rtos/Demo/AVR_ATMega2560_GCC at master · seharris/qemu-avr-tests](https://github.com/seharris/qemu-avr-tests/tree/master/free-rtos/Demo/AVR_ATMega2560_GCC)
- [asm_web_debug/playground/demo_debug at main · OSLL/asm_web_debug](https://github.com/OSLL/asm_web_debug/tree/main/playground/demo_debug)
