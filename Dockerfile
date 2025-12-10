FROM ghcr.io/jwhumphries/tailwindcss:latest@sha256:750e75861958b585d89088487f024dc57403078650925982ffcb6945a2800532 AS tailwind

FROM oven/bun:alpine
COPY --from=tailwind /usr/local/bin/tailwindcss /usr/local/bin/
