FROM ghcr.io/jwhumphries/tailwindcss:latest@sha256:a4fdf32e156f84f0221a77b2c5afc2448a6b143b088df5e2d3e3fa6ac31f4656 AS tailwind

FROM oven/bun:alpine@sha256:9953df496cc148c446edb99bf0955665681514da0b1daafca1db9ad7c3327c08
COPY --from=tailwind /usr/local/bin/tailwindcss /usr/local/bin/
