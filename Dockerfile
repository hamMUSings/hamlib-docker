FROM alpine:3.22.2
RUN apk add hamlib
RUN adduser -SD hamlibd
RUN addgroup hamlibd dialout
USER hamlibd
ENV BAUD=9600
ENV MODEL=1
CMD rigctld -m ${MODEL} -r /dev/ttyUSB0 -s ${BAUD} -p 4532