FROM munken/ucesb


RUN git clone https://gitlab.au.dk/ausa/mbs-unpacker.git \
    && cd mbs-unpacker \
    && git checkout is619 \
    && make mbs 

COPY unpack.sh /

ENV INPUT_DIR=/data
ENV OUTPUT_DIR=/output
ENV UNPACKER=/mbs-unpacker/MBS_unpacker

CMD /unpack.sh 
