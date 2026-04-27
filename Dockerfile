FROM ghcr.io/jwhumphries/tailwindcss:latest@sha256:f7a61f3a483693b20d19119c516bbf75af3e45edd7662f6bbd601e363adcecef AS tailwind

FROM oven/bun:alpine@sha256:4de475389889577f346c636f956b42a5c31501b654664e9ae5726f94d7bb5349
COPY --from=tailwind /usr/local/bin/tailwindcss /usr/local/bin/
