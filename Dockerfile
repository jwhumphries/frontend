FROM ghcr.io/jwhumphries/tailwindcss:latest@sha256:4036410be2d0c2c145f87c658a3a68bf8c282cd59bfac73f52f9cea969da3ee4 AS tailwind

FROM oven/bun:alpine@sha256:4cf82f5686b196504fe119db3fcd9185b191f82ece82c40680e597228ec6070a
COPY --from=tailwind /usr/local/bin/tailwindcss /usr/local/bin/
