FROM nginx:1.23.4-alpine

COPY public /usr/share/nginx/html
COPY nginx.conf /etc/nginx/sites-available/default.conf
RUN mkdir -p /etc/nginx/sites-enabled
RUN ln -s /etc/nginx/sites-available/default.conf /etc/nginx/sites-enabled/default.conf
