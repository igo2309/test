# docker inage base jn caddy inage

FROM caddy:2.0.8-alpine

# workdir

WORKDIR /usr/share/caddy

#copy all files

COPY . .

# expose port
EXPOSE 80

# run caddy

CMD ["caddy", "run", "--config", "Caddyfile", "--adapter", "caddyfile" ]
