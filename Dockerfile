FROM munken/ucesb


RUN git clone https://Munken@git.kern.phys.au.dk/ausa/unpacker.git \
    && cd unpacker \
    && git checkout is561c \
    && make

COPY unpack.sh /

ENV INPUT_DIR=/data
ENV OUTPUT_DIR=/output

CMD /unpack.sh 
