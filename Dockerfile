FROM ghcr.io/jwhumphries/tailwindcss:latest@sha256:750e75861958b585d89088487f024dc57403078650925982ffcb6945a2800532 AS tailwind

FROM oven/bun:alpine@sha256:1d653098bf847813e26adb2435f932b7cfa3c132a7e25dd5216dbb1f67dbd118
COPY --from=tailwind /usr/local/bin/tailwindcss /usr/local/bin/
