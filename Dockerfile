FROM ghcr.io/jwhumphries/tailwindcss:latest@sha256:7c9c8f28e81d8c932abed855a35a4c9124bcdd5cb3e018385aed3900f6b91107 AS tailwind

FROM oven/bun:alpine@sha256:b0885548002187f088af5c7e04008f852c0a30cbe4192b5d75c3266a7f0b01f5
COPY --from=tailwind /usr/local/bin/tailwindcss /usr/local/bin/
