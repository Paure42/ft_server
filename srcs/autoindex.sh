#!/bin/bash
if [ "$1" = "on" ]; then
	cp /tmp/default_index_on /etc/nginx/sites-enabled/default
	rm -f /etc/nginx/sites-available/default
	ln -s /etc/nginx/sites-enabled/default /etc/nginx/sites-available
else
	cp /tmp/default_index_off /etc/nginx/sites-enabled/default
	rm -f /etc/nginx/sites-available/default
	ln -s /etc/nginx/sites-enabled/default /etc/nginx/sites-available
fi
service nginx restart
