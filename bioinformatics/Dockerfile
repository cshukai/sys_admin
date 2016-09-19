FROM sc724/biotools
MAINTAINER Shukai Chang <cshukai@gmail.com>

#linuxbrew

# Perl
RUN brew install cpanm
RUN cpanm Statistics::Descriptive # for amos
ENV PERL5LIB /home/linuxbrew/perl5/lib/perl5

# Python
RUN brew install python # for pip and setuptools
RUN brew install python3
RUN brew install homebrew/python/numpy # for cerulean

RUN brew tap homebrew/science

RUN brew install a5
RUN brew install abacas
RUN brew install abyss-explorer
RUN brew install abyss
RUN brew install ace-corrector
#RUN brew install allpaths-lg # g++-4.8: internal compiler error
RUN brew install amos
RUN brew install andi
RUN brew install art
RUN brew install artemis
RUN brew install astral
#RUN brew install atram # Dependency express fails to build.
RUN brew install augustus
RUN brew install bam-readcount
RUN brew install bamhash
RUN brew install bamtools
RUN brew install bamutil
RUN brew install barrnap
RUN brew install bcalm
RUN brew install bcftools
RUN brew install beast
RUN brew install bedops
RUN brew install bedtools
RUN brew install bfc
RUN brew install bioawk
RUN brew install biobloomtools
RUN brew install biointerchange
RUN brew install blasr