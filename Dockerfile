FROM jrnold/rstan:latest
LABEL Wytamma Wirth wytamma.wirth@me.com

# Install brms
RUN install2.r --error --deps TRUE \
    brms