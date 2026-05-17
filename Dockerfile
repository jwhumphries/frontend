FROM ghcr.io/jwhumphries/tailwindcss:latest@sha256:f7a61f3a483693b20d19119c516bbf75af3e45edd7662f6bbd601e363adcecef AS tailwind

FROM oven/bun:alpine@sha256:5acc90a93e91ff07bf72aa90a7c9f0fa189765aec90b47bdbf2152d2196383c0
COPY --from=tailwind /usr/local/bin/tailwindcss /usr/local/bin/
