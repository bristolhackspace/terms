FROM docker.io/sphinxdoc/sphinx AS builder

WORKDIR /docs
COPY . .
RUN pip3 install sphinx_rtd_theme
RUN make html

FROM alpine:3.14 AS runner

WORKDIR /docs
COPY --from=builder /docs/build/html /docs
