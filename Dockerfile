# Updated
FROM ausadocker/ucesb

 
RUN git clone https://gitlab.au.dk/ausa/unpacker.git \
    && git -C unpacker/ pull &&  make -C unpacker/i257 mbs 
COPY unpack.sh /
RUN cat unpacker/i257/DetectorMapping.spec
ENV INPUT_DIR=/data
ENV OUTPUT_DIR=/output
ENV UNPACKER=/unpacker/i257/MBS_unpacker

CMD /unpack.sh
