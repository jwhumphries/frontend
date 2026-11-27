FROM ghcr.io/jwhumphries/tailwindcss:latest@sha256:68180dec78f611bce38eb04acba73bdf501c50d14cfba28ad89f0c7f6eeebe5e AS tailwind

FROM oven/bun:alpine@sha256:da816670775f4c2b4e990b6b1847cf5540dcdc721a42033dd331ce7a88ba6a3b
COPY --from=tailwind /usr/local/bin/tailwindcss /usr/local/bin/
