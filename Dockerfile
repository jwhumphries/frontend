FROM --platform=$BUILDPLATFORM ghcr.io/jwhumphries/tailwindcss:latest AS tailwind

FROM --platform=$BUILDPLATFORM oven/bun:alpine
COPY --from=tailwind /usr/local/bin/tailwindcss /usr/local/bin/
