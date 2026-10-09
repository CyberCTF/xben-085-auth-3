# Overlay of the benchmark's src/Dockerfile (the benchmark is vendored unchanged in app/).
# What differs from upstream:
# - the COPY sources point into app/src/ (this folder is the build context);
# - the FLAG build argument defaults to this lab's fixed flag, the value upstream's Makefile passes (FLAG{sha256 of the benchmark id}), since the spec passes no build arguments.
# Everything else is upstream's, line for line.

FROM php:5-apache

COPY app/src/ .
WORKDIR /var/www/html

ARG FLAG=FLAG{85cb364127e765d4659edc4d2d63fcf1161e763726273a36d21a8ef39c766adf}

RUN sed -i s/@FLAG@/$FLAG/g index.php

EXPOSE 80
