FROM munken/ucesb


RUN git clone https://Munken@git.kern.phys.au.dk/ausa/MBS-unpacker.git \
    && cd MBS-unpacker \
    && git checkout is561b \
    && make mbs 

COPY unpack.sh /

ENV INPUT_DIR=/data
ENV OUTPUT_DIR=/output
ENV UNPACKER=/MBS-unpacker/MBS_unpacker

CMD /unpack.sh 
