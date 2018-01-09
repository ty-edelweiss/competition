FROM alpine:3.7
LABEL maintainer="ty-edelweiss <ty.edelweiss.0000@gmail.com>"

RUN apk add --no-cache gcc g++ clang make cmake git

WORKDIR /cpp
