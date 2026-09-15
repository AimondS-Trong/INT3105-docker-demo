FROM alpine:3.20

# demo packages
RUN apk add --no-cache curl jq bash

WORKDIR /app
COPY demo.sh .
RUN chmod +x demo.sh

CMD ["./demo.sh"]
