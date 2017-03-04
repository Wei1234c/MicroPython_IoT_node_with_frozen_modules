python D:\Python\scripts\esptool.py --port %1 flash_id
python D:\Python\scripts\esptool.py --port %1 erase_flash
python D:\Python\scripts\esptool.py --port %1 --baud 115200 write_flash --flash_size=32m 0x00000 MicroPython_ESP8266.bin
PAUSE
