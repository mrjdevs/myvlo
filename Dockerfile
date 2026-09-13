FROM debian:bookworm-slim

WORKDIR /app

COPY vlo /app/vlo
COPY pages /app/pages
COPY components /app/components
COPY public /app/public
COPY layouts /app/layouts
COPY schema.sql /app/schema.sql

RUN chmod +x /app/vlo

CMD ["/app/vlo", "serve"]
