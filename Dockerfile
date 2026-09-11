FROM ghcr.io/jwhumphries/tailwindcss:latest@sha256:19200b82b8b1de206cd9ddb3649297312001dda527f59ffbf7e43dd86efb6db1 AS tailwind

FROM oven/bun:alpine@sha256:d888c0ae6c86d7866ff10c5aafdd9077b36aee6455b33dd270fb93c0dd5cef6f
COPY --from=tailwind /usr/local/bin/tailwindcss /usr/local/bin/
