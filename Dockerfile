FROM flyio/flyctl:latest as flyctl
FROM alpine

COPY --from=flyctl /flyctl /usr/local/bin/

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
