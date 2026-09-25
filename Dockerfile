FROM ghcr.io/jwhumphries/tailwindcss:latest@sha256:3ef8144ede560396014fa01df3b54cf27f10f0802accfc778864bec97cef014e AS tailwind

FROM oven/bun:alpine@sha256:d888c0ae6c86d7866ff10c5aafdd9077b36aee6455b33dd270fb93c0dd5cef6f
COPY --from=tailwind /usr/local/bin/tailwindcss /usr/local/bin/
