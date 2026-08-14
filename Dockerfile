FROM caddy:2-alpine

COPY . /srv

# Railway injects PORT at runtime.
CMD ["sh", "-c", "caddy file-server --root /srv --listen :${PORT:-80}"]
