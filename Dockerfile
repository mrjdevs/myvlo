FROM debian:bookworm-slim

WORKDIR /app
COPY vlo /app/vlo
COPY pages /app/pages
COPY components /app/components
COPY public /app/public
COPY layouts /app/layouts
COPY schema.sql /app/schema.sql
COPY vlo_app.db /app/vlo_app.db

RUN chmod +x /app/vlo
RUN /app/vlo build
CMD ["/app/vlo", "serve"]
