FROM ghcr.io/jwhumphries/tailwindcss:latest@sha256:e508a9dd017e3311fe652e4656feb122e5ae0bf6925d684d0b0d701ae581ae8f AS tailwind

FROM oven/bun:alpine@sha256:5acc90a93e91ff07bf72aa90a7c9f0fa189765aec90b47bdbf2152d2196383c0
COPY --from=tailwind /usr/local/bin/tailwindcss /usr/local/bin/
