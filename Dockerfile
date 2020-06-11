# Cache buster 1
FROM munken/ucesb

 
RUN git clone https://gitlab.au.dk/ausa/unpacker.git \
    && make -C unpacker/i257 mbs 
COPY unpack.sh /

ENV INPUT_DIR=/data
ENV OUTPUT_DIR=/output
ENV UNPACKER=/unpacker/i257/MBS_unpacker

CMD /unpack.sh 
