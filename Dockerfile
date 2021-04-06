FROM sagemath/sagemath:9.1-py3
USER root
RUN apt-get -qq update \
 && apt-get -qq install -y git \
 && apt-get -qq clean
USER sage
COPY --chown=sage:sage . ${HOME}
