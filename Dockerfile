FROM ghcr.io/jwhumphries/tailwindcss:latest@sha256:7c9c8f28e81d8c932abed855a35a4c9124bcdd5cb3e018385aed3900f6b91107 AS tailwind

FROM oven/bun:alpine@sha256:9953df496cc148c446edb99bf0955665681514da0b1daafca1db9ad7c3327c08
COPY --from=tailwind /usr/local/bin/tailwindcss /usr/local/bin/
