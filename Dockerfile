FROM ghcr.io/jwhumphries/tailwindcss:latest@sha256:f7a61f3a483693b20d19119c516bbf75af3e45edd7662f6bbd601e363adcecef AS tailwind

FROM oven/bun:alpine@sha256:26d8996560ca94eab9ce48afc0c7443825553c9a851f40ae574d47d20906826d
COPY --from=tailwind /usr/local/bin/tailwindcss /usr/local/bin/
