FROM ghcr.io/jwhumphries/tailwindcss:latest@sha256:3a8dedcdd241df69154eab7a8ac13d9fa3de451ac3911091abd69aaeeb23ac26 AS tailwind

FROM oven/bun:alpine@sha256:1d653098bf847813e26adb2435f932b7cfa3c132a7e25dd5216dbb1f67dbd118
COPY --from=tailwind /usr/local/bin/tailwindcss /usr/local/bin/
