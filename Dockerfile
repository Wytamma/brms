FROM rocker/verse:latest
LABEL Wytamma Wirth wytamma.wirth@me.com

RUN apt-get update \
	&& apt-get install -y --no-install-recommends apt-utils ed libnlopt-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/

# Install rstan
RUN install2.r --error --deps TRUE \
    brms \
    && rm -rf /tmp/downloaded_packages/ /tmp/*.rds