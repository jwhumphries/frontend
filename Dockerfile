FROM ghcr.io/jwhumphries/tailwindcss:latest@sha256:2f9432b119a87428bd106582a9da0ecb0ebb9684faf9eee23c0aca7559cd64d1 AS tailwind

FROM oven/bun:alpine@sha256:d888c0ae6c86d7866ff10c5aafdd9077b36aee6455b33dd270fb93c0dd5cef6f
COPY --from=tailwind /usr/local/bin/tailwindcss /usr/local/bin/
