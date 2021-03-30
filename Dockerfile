FROM ausadocker/ucesb


RUN git clone https://gitlab.au.dk/ausa/mbs-unpacker.git \
    && make -C mbs-unpacker mbs 

COPY unpack.sh /

ENV INPUT_DIR=/data
ENV OUTPUT_DIR=/output
ENV UNPACKER=/mbs-unpacker/mbs/MBS_unpacker

CMD /unpack.sh 
