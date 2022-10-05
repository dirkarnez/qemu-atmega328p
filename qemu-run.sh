export PATH="/mingw64/bin:/usr/local/bin:/usr/bin:/bin:/mingw64/bin:/usr/bin:/c/Program Files/qemu" &&

qemu-system-avr -machine arduino-uno \
                -bios ./main/build/arduino.avr.uno/main.ino.elf \
                -nographic \
                -serial stdio  

read -p "Press to exit"