FROM jweinstk/samtools:latest

LABEL maintainer "Josh Weinstock <jweinstk@umich.edu>"

ADD https://github.com/samtools/bcftools/releases/download/1.4.1/bcftools-1.4.1.tar.bz2 /

WORKDIR /
RUN tar xvjf /bcftools-1.4.1.tar.bz2 && \
    cd /bcftools-1.4.1 && \
    make && \
    make install

ENV PATH ${PATH}:/bcftools-1.4.1/bin

ENV SHELL /bin/bash

CMD ["/bin/bash"]
