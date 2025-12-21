FROM ghcr.io/jwhumphries/tailwindcss:latest@sha256:a4fdf32e156f84f0221a77b2c5afc2448a6b143b088df5e2d3e3fa6ac31f4656 AS tailwind

FROM oven/bun:alpine@sha256:7156fcc0cee0194d390bfaf7f0eeda9a5e383e70cc90f31aad3a2440a033d7dc
COPY --from=tailwind /usr/local/bin/tailwindcss /usr/local/bin/
