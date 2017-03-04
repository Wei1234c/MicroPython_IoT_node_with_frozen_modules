docker run -it --rm --name=micropython_esp8266 --hostname=micropython_esp8266 \
--volume=/home/wei/Templates/frozen_modules:/micropython/frozen_modules \
--volume=/home/wei/Templates/firmware:/micropython/firmware \
wei1234c/micropython \
/bin/sh -c \
"cd /home/xtensa/micropython && \
git submodule update --init  && \
make -C mpy-cross  && \
cp /micropython/frozen_modules/* /home/xtensa/micropython/esp8266/modules/ &&  \
cd /home/xtensa/micropython/esp8266 && \
make clean  && \
make axtls SPI_SIZE=4096 && \
make SPI_SIZE=4096 && \
cp /home/xtensa/micropython/esp8266/build/*.bin /micropython/firmware/" 
