FROM ghcr.io/jwhumphries/tailwindcss:latest@sha256:4036410be2d0c2c145f87c658a3a68bf8c282cd59bfac73f52f9cea969da3ee4 AS tailwind

FROM oven/bun:alpine@sha256:da816670775f4c2b4e990b6b1847cf5540dcdc721a42033dd331ce7a88ba6a3b
COPY --from=tailwind /usr/local/bin/tailwindcss /usr/local/bin/
