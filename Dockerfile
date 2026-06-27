FROM ghcr.io/jwhumphries/tailwindcss:latest@sha256:19200b82b8b1de206cd9ddb3649297312001dda527f59ffbf7e43dd86efb6db1 AS tailwind

FROM oven/bun:alpine@sha256:5acc90a93e91ff07bf72aa90a7c9f0fa189765aec90b47bdbf2152d2196383c0
COPY --from=tailwind /usr/local/bin/tailwindcss /usr/local/bin/
