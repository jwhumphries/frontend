FROM ghcr.io/jwhumphries/tailwindcss:latest@sha256:7c9c8f28e81d8c932abed855a35a4c9124bcdd5cb3e018385aed3900f6b91107 AS tailwind

FROM oven/bun:alpine@sha256:32f1fcccb1523960b254c4f80973bee1a910d60be000a45c20c9129a1efcffee
COPY --from=tailwind /usr/local/bin/tailwindcss /usr/local/bin/
