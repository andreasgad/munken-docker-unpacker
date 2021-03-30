FROM ausadocker/ucesb


RUN git clone https://gitlab.au.dk/ausa/mbs-unpacker.git \
    && cd mbs-unpacker \
    && git checkout is561b \
    && make mbs 

COPY unpack.sh /

ENV INPUT_DIR=/data
ENV OUTPUT_DIR=/output
ENV UNPACKER=/mbs-unpacker/mbs/MBS_unpacker

CMD /unpack.sh 
