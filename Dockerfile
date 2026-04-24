FROM ghcr.io/jwhumphries/tailwindcss:latest@sha256:7c9c8f28e81d8c932abed855a35a4c9124bcdd5cb3e018385aed3900f6b91107 AS tailwind

FROM oven/bun:alpine@sha256:4de475389889577f346c636f956b42a5c31501b654664e9ae5726f94d7bb5349
COPY --from=tailwind /usr/local/bin/tailwindcss /usr/local/bin/
