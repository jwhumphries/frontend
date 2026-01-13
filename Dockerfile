FROM ghcr.io/jwhumphries/tailwindcss:latest@sha256:a4fdf32e156f84f0221a77b2c5afc2448a6b143b088df5e2d3e3fa6ac31f4656 AS tailwind

FROM oven/bun:alpine@sha256:819f91180e721ba09e0e5d3eb7fb985832fd23f516e18ddad7e55aaba8100be7
COPY --from=tailwind /usr/local/bin/tailwindcss /usr/local/bin/
