FROM golang AS builder
WORKDIR /app
COPY . .
RUN make build-dbg

FROM debian
COPY --from=builder /app/netecho /app/netecho
ENV PATH="/app:${PATH}"
CMD ["netecho"]
