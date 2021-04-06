#!/bin/bash
service nginx restart
service php7.3-fpm restart
service mysql restart
tail -f /dev/null
