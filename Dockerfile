FROM ghcr.io/jwhumphries/tailwindcss:latest@sha256:1f46904fc7cebcae408869dd5da0d761da11cb5e3051441dcfedc86bb10eed43 AS tailwind

FROM oven/bun:alpine@sha256:4cf82f5686b196504fe119db3fcd9185b191f82ece82c40680e597228ec6070a
COPY --from=tailwind /usr/local/bin/tailwindcss /usr/local/bin/
