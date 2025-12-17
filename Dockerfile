FROM ghcr.io/jwhumphries/tailwindcss:latest@sha256:3a8dedcdd241df69154eab7a8ac13d9fa3de451ac3911091abd69aaeeb23ac26 AS tailwind

FROM oven/bun:alpine@sha256:7156fcc0cee0194d390bfaf7f0eeda9a5e383e70cc90f31aad3a2440a033d7dc
COPY --from=tailwind /usr/local/bin/tailwindcss /usr/local/bin/
