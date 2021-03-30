FROM ausadocker/ucesb


RUN git clone https://gitlab.au.dk/ausa/mbs-unpacker.git \
    && cd mbs-unpacker \
    && git checkout is633 \
    && make mbs 

COPY unpack.sh /

ENV INPUT_DIR=/data
ENV OUTPUT_DIR=/output
ENV UNPACKER=/mbs-unpacker/MBS_unpacker

CMD /unpack.sh 
