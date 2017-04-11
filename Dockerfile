FROM munken/ucesb


RUN git clone https://Munken@git.kern.phys.au.dk/ausa/MBS-unpacker.git \
    && make -C MBS-unpacker mbs 

COPY unpack.sh /

CMD /unpack.sh 