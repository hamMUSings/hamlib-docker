FROM alpine:3.22.2
RUN apk add hamlib
RUN adduser -SD hamlibd
RUN addgroup hamlibd dialout
USER hamlibd
ENV BAUD=9600
ENV MODEL=1
ENV AUTO_POWER_ON=0
ENV AUTO_POWER_OFF=0
CMD rigctld -m ${MODEL} -r /dev/ttyUSB0 -t 4532 -s ${BAUD} --set-conf=auto_power_on=${AUTO_POWER_ON},auto_power_off=${AUTO_POWER_OFF}
