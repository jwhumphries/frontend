FROM ghcr.io/jwhumphries/tailwindcss:latest@sha256:3a8dedcdd241df69154eab7a8ac13d9fa3de451ac3911091abd69aaeeb23ac26 AS tailwind

FROM oven/bun:alpine
COPY --from=tailwind /usr/local/bin/tailwindcss /usr/local/bin/
