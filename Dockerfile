FROM ghcr.io/jwhumphries/tailwindcss:latest@sha256:2f9432b119a87428bd106582a9da0ecb0ebb9684faf9eee23c0aca7559cd64d1 AS tailwind

FROM oven/bun:alpine@sha256:4cf82f5686b196504fe119db3fcd9185b191f82ece82c40680e597228ec6070a
COPY --from=tailwind /usr/local/bin/tailwindcss /usr/local/bin/
