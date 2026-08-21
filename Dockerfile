FROM ghcr.io/jwhumphries/tailwindcss:latest@sha256:19200b82b8b1de206cd9ddb3649297312001dda527f59ffbf7e43dd86efb6db1 AS tailwind

FROM oven/bun:alpine@sha256:07235578f79ef8c6f97d94aee7938e76f5cdba5f21ae5dbfdd3d3d38058437eb
COPY --from=tailwind /usr/local/bin/tailwindcss /usr/local/bin/
