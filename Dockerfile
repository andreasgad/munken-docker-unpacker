FROM ausadocker/ucesb

ENV UCESB_BASE_DIR=/ucesb

RUN git clone https://gitlab.au.dk/ausa/unpacker.git \
    && cd unpacker \
    && git checkout master \
    && cd is561c/is561c \
    && make mbs \
    && cd ../is561c2 \
    && make mbs \
    && cd ../is561c3 \
    && make mbs

COPY unpack.sh /

ENV INPUT_DIR=/data
ENV OUTPUT_DIR=/output

CMD /unpack.sh 
